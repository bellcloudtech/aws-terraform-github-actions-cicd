FROM nginxinc/nginx-unprivileged:alpine

LABEL org.opencontainers.image.title="AWS Terraform CI/CD Portfolio"
LABEL org.opencontainers.image.description="Containerized cloud portfolio application deployed to Amazon ECS Fargate"

COPY --chown=nginx:nginx app/index.html /usr/share/nginx/html/index.html

EXPOSE 8080

HEALTHCHECK --interval=10s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1:8080/ > /dev/null || exit 1
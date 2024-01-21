FROM python:3.10-alpine

WORKDIR /app

COPY hello.html /app/

RUN adduser -D -u 1001 appuser
USER appuser

CMD ["python", "-m", "http.server", "8000"]

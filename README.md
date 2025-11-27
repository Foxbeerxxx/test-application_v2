# Test Application

Тестовое приложение для дипломного практикума в Yandex Cloud.

Приложение:
- использует Nginx
- отдаёт статическую страницу `index.html`
- имеет health-endpoint `/healthz`

## Сборка Docker-образа

```bash
docker build -t test-application:local .


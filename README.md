# Devops Test

### Overview
This is an application that is a dummy webservice that returns the
last update time.  The last updated time is cached in redis and
resets every 5 seconds.  It has a single '/' endpoint.  The redis
address is passed in through the environment.

NOTE: The following tasks are estimated to take no more than 3 hours total.

### Tasks
1. Create Dockerfile for this application
2. Create docker-compose.yaml to replicate a full running environment 
so that a developer can run the entire application locally without having
to run any dependencies (i.e. redis) in a separate process.
3. Explain how you would monitor this application in production. 
3.1 Приложение должно отдавать метрики в формате прометеуса:
- business metrics ( % 500 от общего количетсва запросов)
- tech metrics (https://grafana.com/grafana/dashboards/6781 + добавлю throtling / count unavailable pods in deployment)
- app metrics ( request rate / request errors / Request duration )
3.2 Приложение должно выводить логи в stdout/stderr в json формате
3.3 Приложение должно поддерживать трейсинг
3.4 Должны быть реализованы ручки /ready /alive
3.5 если запускаем в докере , то docker exporter + node exporter


### Kubernetes(MiniKube) Tasks
4. Prepare local Kubernetes environment (using MiniKube) to run our application in pod/container. 
Store all relevant scripts (kubectl commands etc) in your forked repository.
5. Suggest & create minimal local infrastructure to perform functional testing/monitoring of our application pod.
Demonstrate monitoring of relevant results & metrics for normal app behavior and failure(s).

Please fork this repository and make a pull request with your changes.

Please provide test monitoring results in any convenient form (files, images, additional notes) as a separate archive.

# dockercompose-arch

### Building a Dockerfile with https://hub.docker.com/r/chuckwired/port-tutorial/

1. Create a Dockerfile with sample Hello world App and ensure all the dependencies and installations are included
2. Run docker build
   'docker build -t nodejstestappv1 . '
3. Push it to docker hub
4. Create a docker compose scaling it to 3 replicas. docker-compose up -d  --scale web=3
5. Check curl 127.0.0.1:8080. It should primnt hello world
6. Provision Infra using Terraform in Azure
7. Login to host and do the above activities. Install the docker and terraform using bash scripts
8. Install Prometheus,cAdvisor and Grafana and Node Exporter using docker compose.

Check the metrics below,

## Host metrics
go_gc_duration_seconds{quantile="0"} 0
go_gc_duration_seconds{quantile="0.25"} 0
go_gc_duration_seconds{quantile="0.5"} 0
go_gc_duration_seconds{quantile="0.75"} 0
go_gc_duration_seconds{quantile="1"} 0
go_gc_duration_seconds_sum 0
go_gc_duration_seconds_count 0

#### CAdvisor metrics

cadvisor_version_info{cadvisorRevision="30515557",cadvisorVersion="v0.38.6",dockerVersion="20.10.5",kernelVersion="5.4.0-1043-azure",osVersion="Alpine Linux v3.12"} 1

## Healthcheck script
Call the script with the HTTP URL to check.  curl will
silently try to get the file and send it to /dev/null.  If it fails,
it'll set the exit code, which is checked in the check functiomn of the healthcheck script. We can call this using the cronjhob in the host machine. 

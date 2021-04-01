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


# HELP go_gc_duration_seconds A summary of the pause duration of garbage collection cycles.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 0
go_gc_duration_seconds{quantile="0.25"} 0
go_gc_duration_seconds{quantile="0.5"} 0
go_gc_duration_seconds{quantile="0.75"} 0
go_gc_duration_seconds{quantile="1"} 0
go_gc_duration_seconds_sum 0
go_gc_duration_seconds_count 0
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 9
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.15.8"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 1.328088e+06
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 1.328088e+06
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.445195e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 721
# HELP go_memstats_gc_cpu_fraction The fraction of this program's available CPU time used by the GC since the program started.
# TYPE go_memstats_gc_cpu_fraction gauge



#### CAdvisor metrics

# HELP cadvisor_version_info A metric with a constant '1' value labeled by kernel version, OS version, docker version, cadvisor version & cadvisor revision.
# TYPE cadvisor_version_info gauge
cadvisor_version_info{cadvisorRevision="30515557",cadvisorVersion="v0.38.6",dockerVersion="20.10.5",kernelVersion="5.4.0-1043-azure",osVersion="Alpine Linux v3.12"} 1
# HELP container_cpu_load_average_10s Value of container cpu load average over the last 10 seconds.
# TYPE container_cpu_load_average_10s gauge
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/",image="",name=""} 0 1617291694543
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/docker",image="",name=""} 0 1617291694489
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice",image="",name=""} 0 1617291695381
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice/accounts-daemon.service",image="",name=""} 0 1617291695172
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice/apparmor.service",image="",name=""} 0 1617291692608
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice/apport.service",image="",name=""} 0 1617291692751
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice/atd.service",image="",name=""} 0 1617291695716
container_cpu_load_average_10s{container_label_com_docker_compose_config_hash="",container_label_com_docker_compose_container_number="",container_label_com_docker_compose_oneoff="",container_label_com_docker_compose_project="",container_label_com_docker_compose_project_config_files="",container_label_com_docker_compose_project_working_dir="",container_label_com_docker_compose_service="",container_label_com_docker_compose_version="",container_label_maintainer="",id="/system.slice/blk-availability.service",image="",name=""} 0 1617291690263
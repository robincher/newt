# Newt - Swiss Army Knife to Debug Kubernetes Networking

## Introduction

Docker and Kubernetes network troubleshooting can become complex when our workloads start growing. With proper understanding of how Docker and Kubernetes networking works and the right set of tools, you can troubleshoot and resolve these networking issues. This container contains the necessary tools for us when troubleshooting networking issues within or out of the kubernetes cluster.

## How to use

### Docker Container

```
# Build the container with any new changes
docker build -t <reponame>/newt:<tag> -f Dockerfile . 

# Run the container in detached mode
 docker run -d --name newt <reponame>/newt:<tag>       

# Running the commands directly 
docker exec -it newt telnet  <<host.ip>>

# Executing into the container
docker exec -it newt bin/sh     
```

### Deploy to Kubernetes

You can refer to the examples, and update the repository link accordingly

```
# Apply via Manifest
kubectl apply -f examples/newt.yaml

# Run imperative command
kubectl run newt --image=reponame/newt -n default

# Remote exec the pod
kubectl exec -it newt-pod bin/sh 
```

## Reference Links
- Inspiration for this container - [Netshoot](https://github.com/nicolaka/netshoot)


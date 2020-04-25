# How to run this project
1. Ensure that you have Docker Desktop installed and running with Kubernetes enabled
1. Run the first batch script to build the custom Docker images
1. Run the second batch script to deploy the blockchain client application into Kubernetes
1. Copy the URL from the last script's output to access the blockchain client in your browser 
   - (i.e. `http://localhost:30000`)
1. Run the third batch script to deploy two blockchain node applications into Kubernetes
1. Copy the URL from the last script's output to access the two blockchain nodes in your browser 
   - (i.e. `http://localhost:31001` & `http://localhost:31002`)
1. Run `kubectl get svc` in a terminal to find the Kubernetes service names of the deployments
   - (i.e. `client`, `node1`, `node2`, etc.)
1. Edit the scripts to deploy and configure the Helm chart as you see fit for your expanded project


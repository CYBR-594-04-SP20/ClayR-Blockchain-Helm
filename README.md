# How To Run This Project
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
1. Using the service names connect the two blockchain nodes together using their `/configure` API endpoints
   - (i.e. for Node1's configure page, you would enter in "Node Urls: http://node2:5000" and then the same process for Node2 using `node1` for Node2's Node Url)
1. Create a couple Bitcoin wallets on the blockchain client's UI
1. Use the bitcoin wallets to create new transactions and experiment with the blockchain system you've just deployed!
   - For an in depth usage guide please follow the [Python Project creator's article here](http://adilmoujahid.com/posts/2018/03/intro-blockchain-bitcoin-python/)

## How to Scale the project in Kubernetes
1. Edit the scripts to deploy and configure additional Helm chart releases as you see fit for your expanded project

# Credits
*Python Source Code*
https://github.com/adilmoujahid/blockchain-python-tutorial

## Release
This project is release for educational purposes only
@echo off
TITLE "Blockchain Node Deployer"

echo.
echo ----------------------------------------------------------
echo -------Deploying Blockchain Node1 Using Kubernetes--------
echo ----------------------------------------------------------
echo.

cd blockchain-helm
helm install node1 blockchain-py

echo.
echo.
echo ----------------------------------------------------------
echo -------Deploying Blockchain Node2 Using Kubernetes--------
echo ----------------------------------------------------------
echo.

helm install node2 blockchain-py --set service.nodePort=31002


pause

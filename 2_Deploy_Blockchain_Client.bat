@echo off
TITLE "Blockchain Client Deployer"

echo.
echo ----------------------------------------------------------
echo -------Deploying Blockchain Client Using Kubernetes-------
echo ----------------------------------------------------------
echo.

cd blockchain-helm
helm install client blockchain-py -f client_config.yaml


pause

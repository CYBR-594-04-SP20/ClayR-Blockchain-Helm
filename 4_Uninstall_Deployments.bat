@echo off
TITLE UNINSTALL BLOCKCHAIN HELM DEPLOYMENTS

echo.
echo ----------------------------------------------------------
echo ----------Uninstalling Blockchain Helm Releases-----------
echo ----------------------------------------------------------
echo.

helm delete client
helm delete node1
helm delete node2


pause

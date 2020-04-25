@echo off
TITLE "Python Blockchain Docker Builder"

echo.
echo ----------------------------------------------------------
echo -------Building Python Blockchain Node Docker Image-------
echo ----------------------------------------------------------
echo.

pushd .\blockchain-helm\blockchain
docker build -t blockchain-node .
popd

echo.
echo ----------------------------------------------------------
echo ------Building Python Blockchain Client Docker Image------
echo ----------------------------------------------------------
echo.

pushd .\blockchain-helm\blockchain_client
docker build -t blockchain-client .
popd


pause

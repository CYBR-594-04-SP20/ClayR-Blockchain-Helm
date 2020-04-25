@echo off
$TOKEN=((kubectl -n kube-system describe secret default | Select-String "token:") -split " +")[1]
echo $token
pause
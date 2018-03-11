FROM microsoft/windowsservercore:latest

WORKDIR /build  
COPY ./ .
ENTRYPOINT powershell ./build.ps1 

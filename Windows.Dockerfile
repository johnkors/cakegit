
FROM microsoft/dotnet:2.1-sdk

WORKDIR /build
COPY ./ .
ENTRYPOINT ./build.ps1 

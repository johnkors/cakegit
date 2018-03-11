
FROM microsoft/dotnet:2.0-sdk-nanoserver

# Install Mono
RUN Invoke-WebRequest "https://download.mono-project.com/archive/5.10.0/windows-installer/mono-5.10.0.160-x64-0.msi" \ 
-OutFile "$env:TEMP\mono-install.msi" \ 
-UseBasicParsing

RUN &  "$env:TEMP\mono-install.msi" /Silent /Full

WORKDIR /build  
COPY ./ .
ENTRYPOINT ./build.ps1 

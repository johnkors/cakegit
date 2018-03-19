
FROM devlead/bitbucket-pipelines-dotnet



WORKDIR /build
COPY ./ .
RUN ./build.sh 

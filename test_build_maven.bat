REM COPY ..\maven\apache-maven\target\apache-maven-4.0.0-alpha-1-SNAPSHOT-bin.zip .\maven\
COPY .\maven\apache-maven-4.0.0-alpha-1-SNAPSHOT-bin.zip-master .\maven\apache-maven-4.0.0-alpha-1-SNAPSHOT-bin.zip

setlocal
for /f "usebackq delims=" %%A in (`docker build -q .`) do set RESULT=%%A

echo %RESULT%

docker run ^
  -v "/c/workspace/github_jkatada/maven-property-demo/log:/root/log" ^
  -v "/c/Users/k/.m2/repository:/root/.m2/repository" ^
  -e MAVEN_VERSION=4.0.0-alpha-1-SNAPSHOT ^
  %RESULT%

@echo off

docker-compose stop || goto :error
docker-compose rm -f || goto :error
docker volume rm proxy_ssh-keys || goto :error
goto :EOF

:error
echo Failed with error %errorlevel%.
exit /b %errorlevel%
@echo off

docker-compose up -d || goto :error
docker cp %USERPROFILE%/.ssh/id_rsa.pub proxy_bastion_1:/root/.ssh/authorized_keys || goto :error
docker-compose exec bastion chown root:root /root/.ssh/authorized_keys || goto :error
docker-compose restart || goto :error
goto :EOF

:error
echo Failed with error %errorlevel%.
exit /b %errorlevel%
#!/bin/bash
# клонируем репозиторий
git clone https://github.com/Alex-pvl/DestructiveFarm
# переходим в папку DestructiveFarm
cd DestructiveFarm
# запрашиваем у пользователя необходимые данные
echo "Введите Flag Format:"
read flag_format
echo "Введите system protocol:"
read sys_protocol
echo "Введите system url:"
read sys_url
echo "Введите sytem token:"
read sys_token
echo "Введите server password:"
read server_password
# переименовываем файл config.py в config.py.old
mv server/config.py server/config.py.old
# создаем копию файла config.py и заменяем необходимые значения
echo "CONFIG = {  'TEAMS': {'Team #{}'.format(i): '10.0.{}.1'.format(i) for i in range(1, 20)}, 
 'FLAG_FORMAT': '$flag_format',   
 'SYSTEM_PROTOCOL': '$sys_protocol',   
 'SYSTEM_URL': '$sys_url',  
 'SYSTEM_TOKEN': '$sys_token',   
 'SSUBMIT_FLAG_LIMIT': 20,   
 'SUBMIT_PERIOD': 15,   
 'FLAG_LIFETIME': 15 * 60,    
'SERVER_PASSWORD': '$server_password',  
  'ENABLE_API_AUTH': False,   
 'API_TOKEN': '00000000000000000000'}" > server/config.py

# запускаем файл start_server.sh
./start_server.sh

# AlexanderMokhovSer_infra
AlexanderMokhovSer Infra repository

ль конечной машины,
- 10.128.0.26— IP конечной машины
- appuser — пользователь на бастионхосте,
- 130.193.48.3 — внешний IP бастионхоста


2. Для подключения к someinternalhost короткой командой

- Создать файл конфигурации SSH (если отсутствует) по пути /Users/alexandermokhov/.ssh/config
- Указать в нем следующие параметры

Host someinternalhost
    HostName      10.128.0.26
    User          appuser
    IdentityFile  /Users/alexandermokhov/.ssh/appuser
    ProxyJump     appuser@130.193.48.3

- Выполнить команду ssh someinternalhost

3. Настройка Pritunl (версия МонгоДБ была изменена на 7*)
- Развернут и настроен по адресу https://130.193.48.3/#/servers
- Создана Организация OTUS и тестовый пользователь test
- В настройках создан Сервер для подключения c Названием server
- Произведено тестовое подключение с помощью клиента Pritunl на локальном устройстве
- Произведена проверка подключения к someinternalhost по внутреннему адресу 10.128.0.26
- Произведена настройка валидного сертификата nip.io и установка имени https://130.193.48.3.nip.io/

bastion_IP = 130.193.48.3
someinternalhost_IP = 10.128.0.26

4. Приложение
testapp_IP = 158.160.61.34
testapp_port = 9292

Дополнительное задание

Разработаны скрипты:
deploy.sh, install_mongodb.sh, install_ruby.sh
Для создание инстанса с приложением созданы startup-script.sh и startup.yaml
И команда для создания:
yc compute instance create \
   --name reddit-app-2 \
   --hostname reddit-app-2 \
   --memory=4 \
   --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
   --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
   --metadata-from-file='user-data=startup.yaml' \
   --metadata serial-port-enable=1

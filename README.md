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

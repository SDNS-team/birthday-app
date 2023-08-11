# birthday-app

Документация находится в [базе знаний youtrack](https://sdns.youtrack.cloud/articles).

## Подготовка проекта
### Добавить конфиги firebase:
1. Установить/обновить [Firebase CLI](https://firebase.google.com/docs/cli#setup_update_cli)
2. `> firebase login` - залогиниться в аккаунт, привязанный к проекту
3. `> dart pub global activate flutterfire_cli` - установить flutterfire
4. `> flutterfire configure` - создать конфигурацию для проекта

Для iOS:
1. Сходить на страницу проекта в firebase console
2. Выбрать iOS приложение
3. Нажать 'See SDK instructions'
4. Скачать файл GoogleService-info.plist по инструкции (нужен xcode)

Profit!

После установки плагинов из [списка](https://firebase.google.com/docs/flutter/setup?platform=android#available-plugins)
нужно перезапустить скрипт `> flutterfire configure` и обновить GoogleService-info.plist

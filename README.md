# movies_app


Тестовое задание

Тестовое задание сделанно по [Данной ссылке](https://code-factory.notion.site/fd53b51711fb422897fcaf2b0e6bb20b)

Для лучшей работы лучше использовать [MakeFile](./Makefile). 

env файл лежит в [assets](assets/.env). В идеале будет скрыт, но для тестового так

*** Запуск проекта ***

# 1. Клонировать репозиторий

``` bash bash
   git  https://github.com/your-username/movies_app.git
```
# 2. Перейдтие в каталог

```
cd movies_app
```
# 3. Установите зависимости:

```
make install
```
# 4.Создайте файл .env в директории assets и добавьте ваш API ключ:

***В нашем случае он есть в assets***
```
TMDB_API_KEY=your_api_key_here 
```

# 5. Запуск проекта

```
make run
```


## Структура проекта

```plaintext
movies_app/
├── assets/                         # Статические ресурсы, включая .env файл
├── lib/                            # Основной код приложения
│   ├── bloc/                       # Логика управления состоянием с использованием Bloc
│   │   ├── movie_event/            # События Bloc
│   │   │   └── movie_event.dart    # Определения событий
│   │   ├── movie_state/            # Состояния Bloc
│   │   │   └── movie_state.dart    # Определения состояний
│   │   └── movie_bloc.dart         # Реализация MovieBloc
│   ├── components/                 # Повторно используемые UI-компоненты
│   │   └── movie_card.dart         # Карточка фильма
│   ├── models/                     # Модели данных
│   │   └── movie_models/           # Модели данных для фильмов
│   │       └── movie_models.dart   # Модель данных для фильма
│   ├── service/                    # Сервисы для взаимодействия с API
│   │   └── api_service.dart        # Реализация API сервиса
│   ├── ui/                         # Пользовательские интерфейсы
│   │   ├── home_page.dart          # Главная страница
│   │   ├── movie_detail_page.dart  # Страница деталей фильма
│   │   ├── movie_list_page.dart    # Страница списка фильмов
│   │   └── movie_search_page.dart  # Страница поиска фильмов
│   └── main.dart                   # Точка входа в приложение                # Тесты для приложения
├── pubspec.yaml                    # Файл конфигурации Flutter/Dart
├── README.md                       # Документация проекта
└── Makefile                        # Makefile для удобного управления задачами

```


Скриншоты


<p>
<img src="github/screen/main.png" width="250" />
  <img src="github/screen/search.png" width="250" />
  </p>
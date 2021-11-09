# api_yamdb
api_yamdb
"Проект api для сайта про фильмы, пользователь может оставлять отзывы к фильмам и ставить оценки, пользователь может комментировать свои и чужие отзывы. Фильмы делятся по жанрам"


docker-compose start                                                # Запускаем приложение                                                                                         
docker-compose exec web python manage.py makemigrations             # Создаем миграции                                                                                             
docker-compose exec web python manage.py migrate --noinput          # Применяем миграции                                                                                          

docker-compose exec web python manage.py createsuperuser            # Создаем Админа                                                                                              
docker-compose exec web python manage.py collectstatic --no-input   # Собираем статику                                                                                             
docker-compose exec web python manage.py loaddata fixtures.json     # Подгружаем первоначальные данные                                                                            

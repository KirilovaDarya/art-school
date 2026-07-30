#!/bin/sh
# Обновление расписания на сайте.
# Использование: ./update-schedule.sh "27 июля — 2 августа" "Темы занятий с 27 июля по 2 августа.pdf"
# После этого: git add -A && git commit && git push — сайт обновится сам.
set -e
cp "$2" public/raspisanie.pdf
VER=$(md5sum public/raspisanie.pdf | cut -c1-8)
sed -i "s/dates: '[^']*'/dates: '$1'/" app/pages/index.vue
sed -i "s/ver: '[^']*'/ver: '$VER'/" app/pages/index.vue
echo "Готово: public/raspisanie.pdf заменён, даты «$1», ver=$VER"

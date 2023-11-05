#!/bin/bash
#скрипт для поиска файлов и фомирования символьных ссылок

cd ./krivosheev
way=""
read -p "введите число директорий " dmax
for (( i = 1; i <= dmax; i++ )) # вложенный цикл, пробегает по директориям
    do
        for (( j=1; j <= $i; j++))
        do
        way+=/$i
        done
            if [ -e ./$i$way/$i.txt ]; then # проверка существования файла
                ln -s ./$i$way/$i.txt $i.symlink # создание символьной ссылки
            else
                echo "$i файла или каталога не существует"
            fi
    way=""
    done

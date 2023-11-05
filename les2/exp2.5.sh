#!/bin/bash
#скрипт для создания вложенных каталогов

cd ./krivosheev
read -p "введите число директорий " dmax # макс. число вложенных директорий
way=""

for (( i = 1; i <= $dmax; i++ )) # вложенный цикл
    do
    mkdir $i
        for (( j=1; j <= $i; j++))
        do
        way+=/$i # путь к iтой директории
        done
    mkdir -p ./$i$way
    touch ./$i$way/$i.txt # создать файл во вложенной директории
    way=""
    done

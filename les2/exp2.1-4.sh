#!/bin/bash

mkdir ./krivosheev; cd ./krivosheev

for (( i=1; i <= 20; i++  ))
do
echo $i > ./$i.txt # создание файлов с данными
done


read -p "удалить все файлы не содержащие 4? y,n " keypad
if [ $keypad = y ]; then
    ls | grep -v 4 | xargs sudo rm -rf # удалить все файлы кроме файлов где присутсвует 4
    echo "файлы удалены"
elif [ $keypad = n ]; then
    echo "содержимое не удаленно"
else
    echo "введенны некоректные данные"
fi


read -p "заменить содержимое файла 14txt на 4.txt? y,n " keypad
if [ $keypad = y ]; then
    cat 4.txt > 14.txt # заменить содержимое 14.txt на 4.txt
    echo "успешно"
elif [ $keypad = n ]; then
    echo "данные не заменены"
else
    echo "введенны некоректные данные"
fi





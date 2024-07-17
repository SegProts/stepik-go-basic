@echo off

REM Перейти в папку с репозиторием
cd /d "C:\Go\GoProjects\src\stepik-go-basic"

REM Проверка статуса репозитория
git status
IF ERRORLEVEL 1 (
    echo Ошибка: Убедитесь, что git установлен и путь к репозиторию верен.
    pause
    exit /b 1
)

REM Добавление всех изменений
git add .

REM Получение текущей даты и времени с использованием wmic
for /f "tokens=1-2 delims=." %%a in ('wmic os get localdatetime ^| find "."') do (
    set datetime=%%a
)

set "year=%datetime:~0,4%"
set "month=%datetime:~4,2%"
set "day=%datetime:~6,2%"
set "hour=%datetime:~8,2%"
set "minute=%datetime:~10,2%"

set "datestamp=%year%-%month%-%day%"
set "timestamp=%hour%:%minute%"

REM Коммит изменений с использованием текущей даты и времени
git commit -m "Automatic commit on %datestamp% at %timestamp%"

REM Пуш изменений на сервер
git push origin main

REM pause  Остановить выполнение скрипта, чтобы увидеть вывод

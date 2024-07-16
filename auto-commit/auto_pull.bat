@echo off

REM Перейти в папку с репозиторием
cd /d "C:\Go\GoProjects\src\stepik-go-basic"

REM Проверка наличия Git
git --version
IF ERRORLEVEL 1 (
    echo Ошибка: Убедитесь, что git установлен и доступен в PATH.
    pause
    exit /b 1
)

REM Проверка наличия удалённого репозитория
git remote -v
IF ERRORLEVEL 1 (
    echo Ошибка: Убедитесь, что удалённый репозиторий настроен правильно.
    pause
    exit /b 1
)

REM Подтягивание последних изменений из удалённого репозитория
git pull origin main

REM Проверка успешности pull
IF ERRORLEVEL 1 (
    echo Ошибка: Не удалось выполнить git pull. Проверьте свои учетные данные.
    pause
    exit /b 1
)

REM pause  REM Остановить выполнение скрипта, чтобы увидеть вывод

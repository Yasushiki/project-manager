@echo OFF

if "%~1"=="" goto blank
if "%~1"=="create" goto create
if "%~1"=="remove" goto remove
if "%~1"=="list" goto list
if "%~1"=="open" goto project else goto unknown


:blank

goto done

:create

ruby create.rb
goto done

:remove

ruby remove.rb
goto done

:list

ruby showList.rb
goto done

:project

ruby showProject.rb
goto done

:unknown

echo "Comando não conhecido"
goto done

:done

echo ON

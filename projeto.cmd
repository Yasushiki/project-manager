@echo OFF

::Path that the files are located in
set "projetoPath=D:\Victor\Programacao\Linguagens\Ruby\project\"

::Parameters list
if "%~1"=="" goto blank
if "%~1"=="create" goto create
if "%~1"=="remove" goto remove
if "%~1"=="list" goto list
if "%~1"=="open" goto project 
if "%~1"=="path" goto definePath else goto unknown

::If nothing is passed as parameter
:blank

goto done

::Create the .md file
:create

ruby "%projetoPath%\create.rb"
goto done

::Delete the .md file
:remove

ruby "%projetoPath%\remove.rb"
goto done

::List the .md files
:list

ruby "%projetoPath%\showList.rb"
goto done

::Show a .md file in the command prompt
:project

ruby "%projetoPath%\showProject.rb"
goto done

::Define the path that the ruby files are located in
:definePath &::Be sure to path a full path, not a relative path

set "projetoPath=%~2"
goto done

::It should be if you pass a unknwon parameter
:unknown

echo "Comando não conhecido"
goto done

::End of the command
:done

echo ON

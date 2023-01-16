; Script for installing an .exe file using NSIS

; Request elevated privileges
RequestExecutionLevel admin

; Define the installation directory
Var AppDataLocal
StrCpy $AppDataLocal $LOCALAPPDATA

; Define the installation file
Var exeFile
StrCpy $exeFile "NewHaxeFeathersUIProject.exe"

; Install the file to the AppData/Local folder
File $exeFile

; Create the installation directory if it doesn't exist
CreateDirectory $AppDataLocal\NewHaxeFeathersUIProject

; Move the file to the installation directory
Move /REBOOTOK $exeFile $AppDataLocal\NewHaxeFeathersUIProject
@ECHO off
RD C:\Users\gangs\OneDrive\Desktop\CustomGameLauncher\Files\LastUsedGame.txt
RD C:\Users\gangs\OneDrive\Desktop\CustomGameLauncher\Files
:A 

::Displays the choices
CHOICE /N /C:123 /M "PICK A GAME (1 = Platformer Game (Beta), 2 = Information Page)"%1

::List of responses
IF ERRORLEVEL ==2 GOTO D
IF ERRORLEVEL ==1 GOTO B

::If 1 is pressed
:B
::Starts the game
START C:\Users\Public\Documents\CustomGameLauncher\Games\plain_32birth\PlainBirth.exe
::Attempts to make a folder called Files
MD C:\Users\gangs\OneDrive\Desktop\CustomGameLauncher\Files\
::Creates a File called LastUsedGame.txt and writes "Last used game was Plain Birth"
echo Last used game was Plain Birth > C:\Users\gangs\OneDrive\Desktop\CustomGameLauncher\Files\LastUsedGame.txt
::Goes to the end of the program
GOTO END

:D
::Goes to Information Page
START C:\Users\gangs\OneDrive\Desktop\CustomGameLauncher\Pages\Page1.bat
::Goes to the end of the program
GOTO END

::The end of the program
:END
PAUSE
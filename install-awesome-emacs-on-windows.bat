set source_dir=%~dp0
set emacs_dir=%USERPROFILE%\AppData\Roaming
set destination_dir=%emacs_dir%\.dotemacs

echo "Installing ..."

if not exist "%destination_dir%" (mkdir "%destination_dir%")
xcopy /S /Q /Y "%source_dir%*"  "%destination_dir%"
copy "%destination_dir%\.emacs" "%emacs_dir%\.emacs"

echo "Install Successfully! :-)\n"

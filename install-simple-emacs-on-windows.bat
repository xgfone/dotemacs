set DIRNAME=%~dp0
echo "Installing ...\n"
copy  "%DIRNAME%configs\emacs-basic-config.el"  "%USERPROFILE%\AppData\Roaming\.emacs"

echo "Install Successfully! :-)\n"

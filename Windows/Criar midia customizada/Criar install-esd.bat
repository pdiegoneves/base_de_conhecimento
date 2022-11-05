@eho off
echo "  __  __          _____ ______ _____ ____    _______ _____ "
echo " |  \/  |   /\   / ____|  ____|_   _/ __ \  |__   __|_   _|"
echo " | \  / |  /  \ | |    | |__    | || |  | |    | |    | |  "
echo " | |\/| | / /\ \| |    |  __|   | || |  | |    | |    | |  "
echo " | |  | |/ ____ \ |____| |____ _| || |__| |    | |   _| |_ "
echo " |_|  |_/_/    \_\_____|______|_____\____/     |_|  |_____|"
@echo Criando pasta
md C:\OSImages
IF exist C:\OSImages\nul ( echo OSImages já existe ) ELSE ( mkdir C:\OSImages && echo pasta OSImages Criada)
set /p unidade=Digite a letra da Unidade Montada: 
set /p versao=Digite a versão do windows: 
cls
echo "  __  __          _____ ______ _____ ____    _______ _____ "
echo " |  \/  |   /\   / ____|  ____|_   _/ __ \  |__   __|_   _|"
echo " | \  / |  /  \ | |    | |__    | || |  | |    | |    | |  "
echo " | |\/| | / /\ \| |    |  __|   | || |  | |    | |    | |  "
echo " | |  | |/ ____ \ |____| |____ _| || |__| |    | |   _| |_ "
echo " |_|  |_/_/    \_\_____|______|_____\____/     |_|  |_____|"
dism /Capture-Image /ImageFile:"C:\OSImages\install.wim" /CaptureDir:%unidade%:\ /Name:"%versao%" /Description:"%versao%" /Compress:max /CheckIntegrity
cls
echo "  __  __          _____ ______ _____ ____    _______ _____ "
echo " |  \/  |   /\   / ____|  ____|_   _/ __ \  |__   __|_   _|"
echo " | \  / |  /  \ | |    | |__    | || |  | |    | |    | |  "
echo " | |\/| | / /\ \| |    |  __|   | || |  | |    | |    | |  "
echo " | |  | |/ ____ \ |____| |____ _| || |__| |    | |   _| |_ "
echo " |_|  |_/_/    \_\_____|______|_____\____/     |_|  |_____|"
dism /Export-Image /SourceImageFile:"C:\OSImages\install.wim" /SourceIndex:1 /DestinationImageFile:"C:\OSImages\install.esd" /Compress:Recovery /CheckIntegrity
del C:\OSImages\install.wim /Q
pause
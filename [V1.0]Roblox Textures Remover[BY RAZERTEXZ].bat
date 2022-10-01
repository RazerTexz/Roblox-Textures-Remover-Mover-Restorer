@echo off

title [V1.0]Roblox Textures Remover[BY RAZERTEXZ]
echo [REMOVER]Are you sure?
pause

echo Finding your roblox version directory...
echo SUCCESS

set location=%LocalAppData%\Roblox\Versions
set textureLocation=%LocalAppData%\Roblox\Versions\%%l\PlatformContent\pc\textures
set forJson={"FFlagDebugDisableOTAMaterialTexture":"true"}

for /f %%l in ('dir %location% /ad /b /o') do (
   if not exist "%location%\%%l\ClientSettings" ( mkdir %location%\%%l\ClientSettings )
   cd %location%\%%l\ClientSettings
   echo %forJson% > ClientAppSettings.json

   echo Removing the textures...
   if exist "%textureLocation%\brick" ( rmdir /S /Q %textureLocation%\brick 
   echo Brick textures deleted )
   if exist "%textureLocation%\cobblestone" ( rmdir /S /Q %textureLocation%\cobblestone 
   echo Cobblestone textures deleted )
   if exist "%textureLocation%\concrete" ( rmdir /S /Q %textureLocation%\concrete 
   echo Concrete textures deleted )
   if exist "%textureLocation%\corrodedmetal" ( rmdir /S /Q %textureLocation%\corrodedmetal 
   echo CorrodedMetal textures deleted )
   if exist "%textureLocation%\diamondplate" ( rmdir /S /Q %textureLocation%\diamondplate 
   echo CorrodedMetal textures deleted )
   if exist "%textureLocation%\fabric" ( rmdir /S /Q %textureLocation%\fabric 
   echo Fabric textures deleted )
   if exist "%textureLocation%\foil" ( rmdir /S /Q %textureLocation%\foil 
   echo Foil textures deleted )
   if exist "%textureLocation%\granite" ( rmdir /S /Q %textureLocation%\granite 
   echo Granite textures deleted )
   if exist "%textureLocation%\grass" ( rmdir /S /Q %textureLocation%\grass 
   echo Grass textures deleted )
   if exist "%textureLocation%\ice" ( rmdir /S /Q %textureLocation%\ice 
   echo Ice textures deleted )
   if exist "%textureLocation%\marble" ( rmdir /S /Q %textureLocation%\marble 
   echo Marble textures deleted )
   if exist "%textureLocation%\metal" ( rmdir /S /Q %textureLocation%\metal 
   echo Metal textures deleted )
   if exist "%textureLocation%\pebble" ( rmdir /S /Q %textureLocation%\pebble 
   echo Pebble textures deleted ) 
   if exist "%textureLocation%\plastic" ( rmdir /S /Q %textureLocation%\plastic
   echo Plastic textures deleted )
   if exist "%textureLocation%\sand" ( rmdir /S /Q %textureLocation%\sand 
   echo Sand textures deleted )
   if exist "%textureLocation%\slate" ( rmdir /S /Q %textureLocation%\slate 
   echo Slate textures deleted )
   if exist "%textureLocation%\water" ( rmdir /S /Q%textureLocation%\water 
   echo Water textures deleted )
   if exist "%textureLocation%\wood" ( rmdir /S /Q %textureLocation%\wood
   echo Wood textures deleted ) 
   if exist "%textureLocation%\woodplanks" ( rmdir /S /Q %textureLocation%\woodplanks 
   echo WoodPlanks textures deleted )
   echo SUCCESS
)

echo [TEXTURES WILL BE AUTOMATICALLY BE RESTORED ONCE YOU UPDATE OR REINSTALL ROBLOX]

pause > nul
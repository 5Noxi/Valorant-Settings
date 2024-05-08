@echo off
SETLOCAL EnableExtensions EnableDelayedExpansion

title Noverse Valorant Settings Configuration Utility

echo.
echo      ::::    :::       ::::::::       :::     :::      ::::::::::      :::::::::        ::::::::       :::::::::: 
echo      :+:+:   :+:      :+:    :+:      :+:     :+:      :+:             :+:    :+:      :+:    :+:      :+:        
echo      :+:+:+  +:+      +:+             +:+     +:+      +:+             +:+    +:+      +:+             +:+        
echo      +#+ +:+ +#+      +#+    +:+      +#+     +:+      +#++:++#        +#++:++#:       +#++:++#++      +#++:++#   
echo      +#+  +#+#+#      +#+    +#+       +#+   +#+       +#+             +#+    +#+             +#+      +#+        
echo      #+#   #+#+#      #+#    #+#        #+#+#+#        #+#             #+#    #+#      #+#    #+#      #+#        
echo      ###    ####       ########           ###          ##########      ###    ###       ########       ##########
echo. 
echo                                       Valorant Settings Configuration Utility
echo ________________________________________________________________________________________________________________________
echo.
echo.
echo                           This script is provided by NOVERSE. All rights reserved. !!
echo                Unauthorized copying of this software, via any medium, is strictly prohibited.
echo                                     Proprietary and confidential.
echo.
echo.
echo.
echo                                Press any key to continue with the script...
pause > nul
cls

echo.
echo      ::::    :::       ::::::::       :::     :::      ::::::::::      :::::::::        ::::::::       :::::::::: 
echo      :+:+:   :+:      :+:    :+:      :+:     :+:      :+:             :+:    :+:      :+:    :+:      :+:        
echo      :+:+:+  +:+      +:+             +:+     +:+      +:+             +:+    +:+      +:+             +:+        
echo      +#+ +:+ +#+      +#+    +:+      +#+     +:+      +#++:++#        +#++:++#:       +#++:++#++      +#++:++#   
echo      +#+  +#+#+#      +#+    +#+       +#+   +#+       +#+             +#+    +#+             +#+      +#+        
echo      #+#   #+#+#      #+#    #+#        #+#+#+#        #+#             #+#    #+#      #+#    #+#      #+#        
echo      ###    ####       ########           ###          ##########      ###    ###       ########       ##########
echo. 
echo                                       Valorant Settings Configuration Utility
echo ________________________________________________________________________________________________________________________
echo.

start "" "%LOCALAPPDATA%\VALORANT\Saved\Config"

echo Please navigate to the VALORANT configuration directory in the opened window.
echo Copy the path of the specific configuration folder, then paste it here.
echo Example of path: "C:\Users\YourUsername\AppData\Local\VALORANT\Saved\Config\<unique-id>\Windows"
echo.
echo Enter the full path to your GameUserSettings.ini file:
set "part1=serPa"
set "part2=th="
call set "combined=set /p U!part1!%part2%"

!combined!


if not exist "%UserPath%\GameUserSettings.ini" (
    echo Invalid path or GameUserSettings.ini not found.
    pause
    exit
)

set "SettingsPath=%UserPath%\GameUserSettings.ini"
del "%UserPath%\GameUserSettings.noverse"
set "BackupPath=%UserPath%\GameUserSettings.noverse"

if exist "%SettingsPath%" (
    attrib -r "%SettingsPath%"
    echo Creating backup...
    copy /Y "%SettingsPath%" "%BackupPath%"
) else (
    echo No settings file found at the specified location.
    pause
    exit
)

cls
echo.
echo      ::::    :::       ::::::::       :::     :::      ::::::::::      :::::::::        ::::::::       :::::::::: 
echo      :+:+:   :+:      :+:    :+:      :+:     :+:      :+:             :+:    :+:      :+:    :+:      :+:        
echo      :+:+:+  +:+      +:+             +:+     +:+      +:+             +:+    +:+      +:+             +:+        
echo      +#+ +:+ +#+      +#+    +:+      +#+     +:+      +#++:++#        +#++:++#:       +#++:++#++      +#++:++#   
echo      +#+  +#+#+#      +#+    +#+       +#+   +#+       +#+             +#+    +#+             +#+      +#+        
echo      #+#   #+#+#      #+#    #+#        #+#+#+#        #+#             #+#    #+#      #+#    #+#      #+#        
echo      ###    ####       ########           ###          ##########      ###    ###       ########       ##########
echo. 
echo                                       Valorant Settings Configuration Utility
echo ________________________________________________________________________________________________________________________
echo.
echo.
echo Optimizing GameUserSettings.ini

echo.

:input_resolution
echo Please enter your preferred resolution width (e.g., 1920):
set /p ResolutionX="X: "
if "!ResolutionX!"=="" (
    echo Input cannot be empty, please try again.
    goto input_resolution
)

echo.

:input_height
echo Please enter your preferred resolution height (e.g., 1080):
set /p ResolutionY="Y: "
if "!ResolutionY!"=="" (
    echo Input cannot be empty, please try again.
    goto input_height
)

echo.

:input_framerate
echo Please enter your preferred frame rate limit (e.g., 240.00):
set /p FrameRateLimit="FPS Cap: "
if "!FrameRateLimit!"=="" (
    echo Input cannot be empty, please try again.
    goto input_framerate
)

echo.

(
echo [/Script/ShooterGame.ShooterGameUserSettings]
echo DefaultMonitorDeviceID=""
echo DefaultMonitorIndex=0
echo LastConfirmedDefaultMonitorDeviceID=""
echo LastConfirmedDefaultMonitorIndex=0
echo bShouldLetterbox=False
echo bLastConfirmedShouldLetterbox=False
echo bUseVSync=False
echo bUseDynamicResolution=False
echo ResolutionSizeX=%ResolutionX%
echo ResolutionSizeY=%ResolutionY%
echo LastUserConfirmedResolutionSizeX=%ResolutionX%
echo LastUserConfirmedResolutionSizeY=%ResolutionY%
echo WindowPosX=0
echo WindowPosY=0
echo LastConfirmedFullscreenMode=0
echo PreferredFullscreenMode=0
echo AudioQualityLevel=0
echo LastConfirmedAudioQualityLevel=0
echo FrameRateLimit=%FrameRateLimit%
echo DesiredScreenWidth=%ResolutionX%
echo DesiredScreenHeight=%ResolutionY%
echo LastUserConfirmedDesiredScreenWidth=%ResolutionX%
echo LastUserConfirmedDesiredScreenHeight=%ResolutionY%
echo bUseHDRDisplayOutput=False
echo HDRDisplayOutputNits=1000
echo [ScalabilityGroups]
echo sg.ResolutionQuality=100
echo sg.ViewDistanceQuality=0
echo sg.AntiAliasingQuality=0
echo sg.ShadowQuality=0
echo sg.PostProcessQuality=0
echo sg.TextureQuality=0
echo sg.EffectsQuality=0
echo sg.FoliageQuality=0
echo sg.ShadingQuality=0
echo [ShaderPipelineCache.CacheFile]
echo LastOpened=ShooterGame
) > "%SettingsPath%"

attrib +r "%SettingsPath%"

echo.
echo Optimizing RiotUserSettings.ini, please wait...
echo.

set "SettingsFile=%UserPath%\RiotUserSettings.ini"
del "%UserPath%\RiotUserSettings.noverse"
set "BackupPath2=%UserPath%\RiotUserSettings.noverse"
set "TempFile=%UserPath%\RiotUserSettings.ini.tmp"

if exist "%SettingsFile%" (
    attrib -r "%SettingsFile%"
    echo Creating backup...
    copy /Y "%SettingsFile%" "%BackupPath2%"
) else (
    echo No settings file found at the specified location.
    pause
    exit
)

taskkill /IM "Valorant.exe" /F >nul 2>&1

type nul > "%SettingsFile%"

(
echo [Settings]
echo LocalSettingsVersion=6
echo EAresFloatSettingName::MinimapZoom=1.000000
echo EAresFloatSettingName::VideoVolume=0.000000
echo EAresFloatSettingName::AllMusicOverallVolume=0.000000
echo EAresFloatSettingName::MenuAndLobbyMusicVolume=0.000000
echo EAresFloatSettingName::CharacterSelectMusicVolume=1.000000
echo EAresIntSettingName::ColorBlindMode=3
echo EAresIntSettingName::MegamapCalloutVisibility=0
echo EAresIntSettingName::PlayerPerfShowFrameRate=3
echo EAresIntSettingName::PlayerPerfShowNetworkRtt=1
echo EAresIntSettingName::PlayerPerfShowFiringErrors=2
echo EAresBoolSettingName::MinimapRotates=False
echo EAresBoolSettingName::EnableInstabilityIndicators=False
echo EAresBoolSettingName::ShowBulletTracers=False
echo EAresBoolSettingName::ShowSpecatedPlayerCrosshair=False
echo EAresBoolSettingName::ShowCorpses=False
echo EAresBoolSettingName::EnableHRTF=True
echo EAresBoolSettingName::SpectatorCountWidgetVisible=False
echo EAresBoolSettingName::AutoEquipPrioritizeStrongest=True
echo EAresBoolSettingName::AutoEquipSkipsMelee=True
echo EAresBoolSettingName::ShowKeybindsOnMinimap=False
echo EAresBoolSettingName::LimitFramerateOnBattery=True
echo EAresBoolSettingName::LimitFramerateInMenu=True
echo EAresBoolSettingName::LimitFramerateInBackground=True
echo EAresBoolSettingName::LimitFramerateAlways=True
echo EAresFloatSettingName::MaxFramerateOnBattery=%FrameRateLimit%
echo EAresFloatSettingName::MaxFramerateInMenu=%FrameRateLimit%
echo EAresFloatSettingName::MaxFramerateInBackground=%FrameRateLimit%
echo EAresFloatSettingName::MaxFramerateAlways=%FrameRateLimit%
echo EAresIntSettingName::NvidiaReflexLowLatencySetting=2
echo EAresBoolSettingName::MultithreadedRenderingEnabled=False
echo EAresIntSettingName::MaterialQuality=0
echo EAresIntSettingName::TextureQuality=0
echo EAresIntSettingName::DetailQuality=0
echo EAresIntSettingName::UIQuality=0
echo EAresBoolSettingName::VignetteEnabled=False
echo EAresIntSettingName::AntiAliasing=0
echo EAresIntSettingName::AnisotropicFiltering=1
echo EAresIntSettingName::BloomQuality=0
echo EAresBoolSettingName::DisableDistortion=True
echo EAresBoolSettingName::ShadowsEnabled=False
echo EAresBoolSettingName::ShowBlood=False
echo EAresIntSettingName::NetworkSmoothing=0
echo EAresBoolSettingName::Hide1P=False
echo EAresBoolSettingName::HideOutlinesAndFresnel=False
echo EAresBoolSettingName::ObserversSeeBlinds=False
echo EAresBoolSettingName::TeamColorAffectsHUD=False
echo EAresBoolSettingName::FullscreenMegamap=False
echo EAresBoolSettingName::HideSpectatedAgentPortrait=False
echo EAresBoolSettingName::HandednessByTeam=False
) > "%SettingsFile%"

cls
echo.
echo      ::::    :::       ::::::::       :::     :::      ::::::::::      :::::::::        ::::::::       :::::::::: 
echo      :+:+:   :+:      :+:    :+:      :+:     :+:      :+:             :+:    :+:      :+:    :+:      :+:        
echo      :+:+:+  +:+      +:+             +:+     +:+      +:+             +:+    +:+      +:+             +:+        
echo      +#+ +:+ +#+      +#+    +:+      +#+     +:+      +#++:++#        +#++:++#:       +#++:++#++      +#++:++#   
echo      +#+  +#+#+#      +#+    +#+       +#+   +#+       +#+             +#+    +#+             +#+      +#+        
echo      #+#   #+#+#      #+#    #+#        #+#+#+#        #+#             #+#    #+#      #+#    #+#      #+#        
echo      ###    ####       ########           ###          ##########      ###    ###       ########       ##########
echo. 
echo                                       Valorant Settings Configuration Utility
echo ________________________________________________________________________________________________________________________
echo.
echo.
echo Settings updated successfully.
echo Confirmed settings: Resolution %ResolutionX%x%ResolutionY% at %FrameRateLimit% FPS
echo.
echo GameUserSettings.ini Backup created at: 
echo "%BackupPath%"
echo.
echo RiotUserSettings.ini Backup created at: 
echo "%BackupPath2%"
echo.
echo Thank you for using the Noverse Valorant Settings Configuration Utility.
echo For support, join us on Discord: https://discord.gg/E2ybG4j9jU
echo.
echo Press any key to exit the script...
pause > nul
ENDLOCAL


; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Vox Populi"
#define MyAppVersion "1.2"
#define MyAppPublisher "Community Patch Project Team"
#define MyAppURL "http://forums.civfanatics.com/showthread.php?t=528034"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{97D14FF1-16B3-4F26-AD9D-DF845F5B7766}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultGroupName={#MyAppName}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoCopyright=2021
OutputBaseFilename={#MyAppName} ({#MyAppVersion})
DefaultDirName={userdocs}\My Games\Sid Meier's Civilization 5\MODS\
LicenseFile=License.rtf
InfoBeforeFile=Opener.rtf
SetupIconFile=installer.ico
WizardImageStretch=False
Compression=lzma
SolidCompression=yes
ShowComponentSizes=False
AllowNoIcons=yes
Uninstallable=no
PrivilegesRequired=admin
UsedUserAreasWarning=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Messages]
FinishedLabel=Setup has finished installing [name] on your computer. To launch the mod, open Civilization V and enable all installed mods in the MODS menu, and click 'Next.' Have fun!

[Files]
Source: "(1) Community Patch\*"; DestDir: "{app}\(1) Community Patch"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "(2) Community Balance Overhaul\*"; DestDir: "{app}\(2) Community Balance Overhaul"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Basic or FullEUI or FullNoEUI Civ43EUI Civ43NoEUI
Source: "(3) CSD for VP\*"; DestDir: "{app}\(3) CSD for VP"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI or FullNoEUI Civ43EUI Civ43NoEUI
Source: "(4) Civ IV Diplomatic Features\*"; DestDir: "{app}\(4) Civ IV Diplomatic Features"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI or FullNoEUI Civ43EUI Civ43NoEUI
Source: "(5) More Luxuries\*"; DestDir: "{app}\(5) More Luxuries"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI or FullNoEUI Civ43EUI Civ43NoEUI
Source: "(6a) Vox Populi - Compatibility Files (EUI)\*"; DestDir: "{app}\(6a) Vox Populi - Compatibility Files (EUI)"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI
Source: "(6b) Vox Populi - Compatibility Files (No-EUI)\*"; DestDir: "{app}\(6b) Vox Populi - Compatibility Files (No-EUI)"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI
Source: "(6c) 43 Civs Community Patch\CP Only\*"; DestDir: "{app}\(6c) 43 Civs Community Patch\CP Only"; Flags: ignoreversion; Components: Civ43CPOnly
Source: "(6c) 43 Civs Community Patch\No-EUI\*"; DestDir: "{app}\(6c) 43 Civs Community Patch\No-EUI"; Flags: ignoreversion recursesubdirs; Components: Civ43NoEUI
Source: "(6c) 43 Civs Community Patch\EUI\*"; DestDir: "{app}\(6c) 43 Civs Community Patch\EUI"; Flags: ignoreversion recursesubdirs; Components: Civ43EUI
Source: "(6c) 43 Civs Community Patch\CvGameCore_Expansion2.dll"; DestDir: "{app}\(1) Community Patch\"; DestName: "CvGameCore_Expansion2.dll"; Flags: ignoreversion; Components: Civ43CPOnly Civ43EUI Civ43NoEUI
Source: "(6c) 43 Civs Community Patch\(6c) 43 Civs Community Patch (v 1).modinfo"; DestDir: "{app}\(6c) 43 Civs Community Patch\"; DestName: "(6c) 43 Civs Community Patch (v 1).modinfo"; Flags: ignoreversion; Components: Civ43EUI Civ43NoEUI Civ43CPOnly
Source: "(6c) 43 Civs Community Patch\CP Only\AssignStartingPlots.lua"; DestDir: "{app}\(6c) 43 Civs Community Patch\"; DestName: "AssignStartingPlots.lua"; Flags: ignoreversion; Components: Civ43CPOnly
Source: "(6c) 43 Civs Community Patch\MoreLux\AssignStartingPlots.lua"; DestDir: "{app}\(6c) 43 Civs Community Patch\"; DestName: "AssignStartingPlots.lua"; Flags: ignoreversion; Components: Civ43EUI Civ43NoEUI
Source: "(7a) Promotion Icons for VP\*"; DestDir: "{app}\(7a) Promotion Icons for VP"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI FullEUI Civ43EUI Civ43NoEUI
Source: "(7b) UI - Promotion Tree for VP\*"; DestDir: "{app}\(7b) UI - Promotion Tree for VP"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI FullEUI Civ43EUI Civ43NoEUI
Source: "CP LUA\LUA\*"; DestDir: "{app}\(1) Community Patch\LUA"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Core
Source: "CBO LUA\LUA\*"; DestDir: "{app}\(2) Community Balance Overhaul\LUA"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Basic
Source: "UI_bc1\*"; DestDir: "{reg:HKCU\SOFTWARE\Firaxis\Civilization5,LastKnownPath|{commonpf}\Steam\steamapps\common\Sid Meier's Civilization V}\Assets\DLC\UI_bc1\"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI Civ43EUI

[Components]
Name: "FullEUI"; Description: "Full Version (EUI)"; Types: FullEUI; Flags: exclusive disablenouninstallwarning
Name: "FullNoEUI"; Description: "Full Version (No-EUI)"; Types: FullNoEUI; Flags: exclusive disablenouninstallwarning
Name: "Core"; Description: "Core Version (CP Only)"; Types: Core; Flags: exclusive disablenouninstallwarning
Name: "Basic"; Description: "Basic Version (CP and CBO Only)"; Types: Basic; Flags: exclusive disablenouninstallwarning
Name: "Civ43CPOnly"; Description: "43-Civ Core Version (CP Only)"; Types: 43CivCPOnly; Flags: exclusive disablenouninstallwarning
Name: "Civ43NoEUI"; Description: "43-Civ No-EUI Version"; Types: 43CivNoEUI; Flags: exclusive disablenouninstallwarning
Name: "Civ43EUI"; Description: "43-Civ EUI Version"; Types: 43CivEUI; Flags: exclusive disablenouninstallwarning

[Types]
Name: "FullEUI"; Description: "Vox Populi (including EUI)"
Name: "FullNoEUI"; Description: "Vox Populi (no EUI)"
Name: "Core"; Description: "Community Patch only"
Name: "Basic"; Description: "Community Patch and Community Balance Overhaul only"
Name: "43CivCPOnly"; Description: "43-Civ Community Patch only"
Name: "43CivNoEUI"; Description: "43-Civ Vox Populi (no-EUI)"
Name: "43CivEUI"; Description: "43-Civ Vox Populi (EUI)"

[InstallDelete]
Type: filesandordirs; Name: "{reg:HKCU\SOFTWARE\Firaxis\Civilization5,LastKnownPath|{commonpf}\Steam\steamapps\common\Sid Meier's Civilization V}\Assets\DLC\UI_bc1"; Components: FullEUI FullNoEUI Basic
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\cache"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(1) Community Patch"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(2) Community Balance Overhaul"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3) CSD for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3) CSD for CBP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(4) Civ IV Diplomatic Features"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(5) More Luxuries"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6a) Vox Populi - Compatibility Files (EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6a) Community Balance Overhaul - Compatibility Files (EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6b) Vox Populi - Compatibility Files (No-EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6b) Community Balance Overhaul - Compatibility Files (No-EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6c) 43 Civs Community Patch"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6c) 43 Civss CP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(7a) Promotion Icons for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(7b) UI - Promotion Tree for VP"
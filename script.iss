; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ArcView GIS (x64)"
#define MyAppVersion "3.2a"
#define MyAppPublisher "ESRI"
#define MyAppURL "http://www.esri.com"
#define MyAppExeName "arcview.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8A78B00E-76FD-4C0E-891C-AED8B5C7A2C1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\ESRI\AV_GIS30\ARCVIEW\BIN32\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir= "build"
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
OutputBaseFilename=ArcViewGIS_3_2a_x64_setup
SetupIconFile="AVEXPORT.ICO"
LicenseFile="Esri_License_Agreement.txt"
InfoBeforeFile="setup_information.rtf"
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "Common"; DestDir: "C:\Program Files (x86)\Common Files\ESRI"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Crystal\*"; DestDir: "C:\Windows\Crystal"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ESRI\*"; DestDir: "C:\ESRI"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Shared\*"; DestDir: "C:\Program Files (x86)\Common Files\Microsoft Shared\DAO"; Flags: onlyifdoesntexist recursesubdirs createallsubdirs
Source: "Syswow64\*"; DestDir: "C:\Windows\SysWOW64"; Flags: onlyifdoesntexist recursesubdirs createallsubdirs
Source: "Fonts\*"; DestDir: "C:\Windows\Fonts"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Reg\*"; DestDir: "C:\Windows\Temp\Reg"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "regsetup.bat"; DestDir: "C:\Windows\Temp"; Flags: ignoreversion


[Icons]
Name: "{group}\{#MyAppName}"; Filename: "C:\ESRI\AV_GIS30\ARCVIEW\BIN32\arcview.exe"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "C:\Windows\SysWOW64\IsUninst.exe"
Name: "{commondesktop}\{#MyAppName}"; Filename: "C:\ESRI\AV_GIS30\ARCVIEW\BIN32\arcview.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "C:\ESRI\AV_GIS30\ARCVIEW\BIN32\arcview.exe"; Tasks: quicklaunchicon

[Run]
Filename: "C:\Windows\Temp\regsetup.bat"; Flags: runascurrentuser
Filename: "C:\ESRI\AV_GIS30\ARCVIEW\BIN32\arcview.exe"; Description: "ArcViewGISx64"; Flags: nowait postinstall skipifsilent


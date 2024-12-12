[Setup]
AppId={{7D4C52CD-1C44-46FF-AFA3-A2E462AE3304}
AppName=StudPazymiuSkaiciuokle
AppVersion=3.0
AppPublisher=Vilniaus Universitetas
DefaultDirName={pf}\VU\Martynas-Zabitis
DefaultGroupName=Martynas-Zabitis
OutputDir=.
OutputBaseFilename=StudPazSkaiciuokle_Setup
Compression=lzma
SolidCompression=yes


[Languages]
Name: "lithuanian"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\zabit\Documents\GitHub\ObjProg_Ver2\project_root\build\StudPazSkaiciuokle.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\zabit\Documents\GitHub\ObjProg_Ver2\project_root\src\txt_failai\*"; DestDir: "{app}\src\txt_failai"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\zabit\Documents\GitHub\ObjProg_Ver2\project_root\src\performance_data.csv"; DestDir: "{app}\src"; Flags: ignoreversion

[Icons]
Name: "{group}\StudPazSkaiciuokle"; Filename: "{app}\StudPazSkaiciuokle.exe"
Name: "{commondesktop}\StudPazSkaiciuokle"; Filename: "{app}\StudPazSkaiciuokle.exe"

[Run]
Filename: "{app}\StudPazSkaiciuokle.exe"; Description: "{cm:LaunchProgram,StudPazSkaiciuokle}"; Flags: nowait postinstall skipifsilent
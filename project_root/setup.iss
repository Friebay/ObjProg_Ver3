[Setup]
AppId={{7D4C52CD-1C44-46FF-AFA3-A2E462AE3304}
AppName=StudPazSkaiciuokle
AppVersion=1.0
AppPublisher=Vilniaus Universitetas
DefaultDirName={pf}\VU\StudPazSkaiciuokle
DefaultGroupName=StudPazSkaiciuokle
OutputDir=.
OutputBaseFilename=StudPazSkaiciuokle_Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\zabit\Documents\GitHub\ObjProg_Ver2\project_root\build\StudPazSkaiciuokle.exe"; DestDir: "{app}"; Flags: ignoreversion signonce
Source: "C:\Users\zabit\Documents\GitHub\ObjProg_Ver2\project_root\src\txt_failai\*"; DestDir: "{app}\src\txt_failai"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\StudPazSkaiciuokle"; Filename: "{app}\StudPazSkaiciuokle.exe"
Name: "{commondesktop}\StudPazSkaiciuokle"; Filename: "{app}\StudPazSkaiciuokle.exe"

[Run]
Filename: "{app}\StudPazSkaiciuokle.exe"; Description: "{cm:LaunchProgram,StudPazSkaiciuokle}"; Flags: nowait postinstall skipifsilent runascurrentuser
[Code]
function InitializeSetup(): Boolean;
begin
  // Request administrative privileges for the installer
  if not IsAdminLoggedOn then
  begin
    MsgBox('This installer requires administrative privileges. Please run as administrator.', mbError, MB_OK);
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;
@echo off

SET DOCUMENT_ROOT=%~dp0
SET PROCFILE=%DOCUMENT_ROOT%Procfile

SET PATH=%DOCUMENT_ROOT%node_modules\.bin\;%PATH%

cd /d %DOCUMENT_ROOT%

IF NOT EXIST %PROCFILE% (
  exit 1
)

FOR /f "delims=: tokens=1,2" %%i IN (%PROCFILE%) DO (
  IF "%%i" == "web" (
    call %%j
  )
)

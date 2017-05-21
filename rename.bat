@echo off
echo Renaming multiple files
for /r . %%g in (*"(Copy)".jpg) do (
	for %%i in ("%%g") do for /f "delims=(" %%j in ("%%i") do (
			echo Renaming "%%~nxi" "%%~nxj%%~xi"
			REN "%%~nxi" "%%~nxj%%~xi"
	)
)
echo Renamed all
pause

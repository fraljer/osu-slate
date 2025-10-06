@echo off

for /D %%d in (*-assets) do (
	echo Exporting %%d to Root Folder...
	robocopy "%%d" ..\ * /NFL /NDL /NJH /NJS /nc /ns
)

echo Done exporting, exiting in 3 seconds.

timeout /t 3 /nobreak >nul
exit

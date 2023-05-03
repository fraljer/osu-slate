@echo off

for /D %%d in (*-assets) do (
	echo Exporting %%d to Root Folder...
	robocopy "%%d" ..\ * /NFL /NDL /NJH /NJS /nc /ns
)

pause
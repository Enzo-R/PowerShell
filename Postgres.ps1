
$INCLUDE = "C:\Program Files\PostgreSQL\10\bin\"

($env:PATH).split(";")

$OLDPATH = [System.Environment]::GetEnvironmentVariable('PATH','User')

$NEWPATH = "$INCLUDE;$OLDPATH" 

setx Path "$NEWPATH"



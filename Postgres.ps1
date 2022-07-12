#Create Variable With path
$INCLUDE = "C:\Program Files\PostgreSQL\10\bin\"

#Add list split ;
($env:PATH).split(";")

#Put user enviroments values in the variable
$OLDPATH = [System.Environment]::GetEnvironmentVariable('PATH','User')


$NEWPATH = "$INCLUDE;$OLDPATH" 

#
setx Path "$NEWPATH"



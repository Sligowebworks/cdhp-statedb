 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- copyright 2001-2005 Sligo Computer Services, Inc. All rights reserved -->
<!-- CDHPstate file writer -->
<html>
<head>
<title>CDHP - filebuilder</title>
<!--#INCLUDE FILE="adovbs.inc"-->

<body>
<%
Session("connstring") = "Provider=SQLOLEDB.1;Password=bytes4us;Persist Security Info=True;User ID=sa; Initial Catalog=CDHPState; Data Source=Inferno2"
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.connectionstring  = Session("connstring")
Conn.Open 
SQLbuilder = "SELECT Pagename FROM glsMenuItems WHERE Active = 1;"
set rsbuilder = conn.execute(SQLbuilder)
	rsbuilder.movefirst
dim objFSO
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")

	DO WHILE NOT rsbuilder.EOF 
'		' create a file in each directory
	   	response.write "building: " & rsbuilder("PageName") & ".php" & "<br>"
		vfile = "D:\websites\cdhpstate\" & rsbuilder("PageName") & ".php"
'	response.write "test <BR>"
		call objFSO.CopyFile("d:\websites\cdhpstate\template.php", vfile)
		rsbuilder.movenext
	Loop
	Conn.Close	
%>

</body>
</html>

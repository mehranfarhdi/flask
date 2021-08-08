<%@ Language=VBScript %>
<%
'Use the correct version of csImageFile. Trial/Full 32 bit/64 bit.
Set Image = Server.CreateObject("csImageFileTrial.Manage") 
'Set Image = Server.CreateObject("csImageFile.Manage")
'Set Image = Server.CreateObject("csImageFile64Trial.Manage")
'Set Image = Server.CreateObject("csImageFile64.Manage")

Image.NewImage 400, 300, "FF0000"

X1 = CInt(Request.Querystring("x1"))
Y1 = CInt(Request.Querystring("y1"))
X2 = CInt(Request.Querystring("x2"))
Y2 = CInt(Request.Querystring("y2"))

Image.Rectangle X1, Y1, X2, Y2

Response.ContentType = "image/gif"
Response.BinaryWrite Image.GIFData

%>
<%@ WebService Language="VB" Class="BioPluginService" %>

Imports System
Imports System.Web.Services

Public Class BioPluginService : Inherits WebService


	
   


    <WebMethod()> 
    Public Function DeleteID(ByVal ID As String, ByVal engineName As String) As String

        Dim bioplug As New m2sys.BioPluginWeb.COM()
        Dim result As String
        result = ""
        bioplug.SetEngine(engineName, result)
        bioplug.DeleteIDWS(ID, 0, result)
        bioplug = Nothing
        Return result

    End Function

End Class
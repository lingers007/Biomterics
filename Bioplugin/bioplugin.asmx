<%@ WebService Language="VB" Class="BioPluginService" %>

Imports System
Imports System.Web.Services

Public Class BioPluginService : Inherits WebService


	<WebMethod()>Public Function GetInfo () as String
		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.GetVersionDetails(result)
		bioplug= Nothing
		return result

	end function

	<WebMethod()>Public Function RefreshCache (engineName as String) as String
		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.RefreshCache(engineName, result)
		bioplug= Nothing
		return result

	end function

	<WebMethod()> Public Function RegisterEx(RegistrationID as String, LeftEnrollTemplate as String, LeftFingerType As System.Int32, RightEnrollTemplate as String, RightFingerType As System.Int32, LeftCaptureTemplate as String, RightCaptureTemplate as String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.PalmRegistration (RegistrationID, LeftEnrollTemplate, LeftFingerType, RightEnrollTemplate, RightFingerType, LeftCaptureTemplate, RightCaptureTemplate, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function UpdateEx(ID as String, LeftUpdateTemplate as String, LeftFingerType As System.Int32, RightUpdateTemplate as String, RightFingerType As System.Int32, LeftCaptureTemplate as String, RightCaptureTemplate as String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.PalmUpdate (ID, LeftUpdateTemplate, LeftFingerType, RightUpdateTemplate, RightFingerType, LeftCaptureTemplate, RightCaptureTemplate, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function Identify (LeftCaptureTemplate as String, LeftDataSize As System.Int32, LeftDataValue As System.Int32, RightCaptureTemplate as String, RightDataSize As System.Int32, RightDataValue As System.Int32, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.IdentifyWS(LeftCaptureTemplate, LeftDataSize, LeftDataValue, RightCaptureTemplate, RightDataSize, RightDataValue, LocationID , result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function IdentifyQuick (CaptureTemplate as String, DataSize As System.Int32, DataValue As System.Int32, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.QuickIdentifyWS (CaptureTemplate, dataSize, 0, LocationID , result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function VerifySingle (CaptureTemplate as String, ID As String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.VerifySingleWS (CaptureTemplate, ID, LocationID, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function Verify (LeftCaptureTemplate as String, RightCaptureTemplate as String, ID As String, LocationID As System.Int32) as String

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.VerifyWS (LeftCaptureTemplate, RightCaptureTemplate, ID, LocationID, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function RegisterSingle (EnrollTemplate as String, FingerType As System.Int32, ID as String, LocationID As System.Int32) as String

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.RegisterSingleWS (EnrollTemplate, FingerType, ID, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function UpdateSingle (UpdateTemplate as String, FingerType As System.Int32, ID as String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.UpdateSingleWS (UpdateTemplate, FingerType, ID, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function Register (LeftEnrollTemplate as String, LeftFingerType As System.Int32, RightEnrollTemplate as String, RightFingerType As System.Int32, ID as String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.RegisterPrintWS (LeftEnrollTemplate, LeftFingerType, RightEnrollTemplate, RightFingerType, ID, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function Update (LeftUpdateTemplate as String, LeftFingerType As System.Int32, RightUpdateTemplate as String, RightFingerType As System.Int32, ID as String, LocationID As System.Int32) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.UpdatePrintWS (LeftUpdateTemplate, LeftFingerType, RightUpdateTemplate, RightFingerType, ID, LocationID, 1, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function DeleteID (ID as String, engineName as String) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.SetEngine(engineName, result)
		bioplug.DeleteIDWS (ID, 0, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function ChangeID (Old_ID as String, New_ID as String, engineName as String) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.SetEngine(engineName, result)
		bioplug.ChangeIDWS (Old_ID, New_ID, result)
		bioplug = Nothing
		return result

	end function

	<WebMethod()> Public Function IsRegistered (ID as String, engineName as String) as String 

		Dim bioplug As New m2sys.BioPluginWeb.COM()
		dim result as string
		result = ""
		bioplug.SetEngine(engineName, result)
		bioplug.IsRegisteredWS (ID, result)
		bioplug = Nothing
		return result

	end function

End Class

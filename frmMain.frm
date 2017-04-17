VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Please press key"
   ClientHeight    =   1620
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4890
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmMain.frx":0E42
   ScaleHeight     =   1620
   ScaleWidth      =   4890
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   4695
   End
   Begin VB.Label Label1 
      Caption         =   "View ASCII Code"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 '------------
' ´°¿ÚÖÃÇ°
Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd As Long, _
    ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, _
    ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)

'-----------------

Private Sub Form_KeyPress(KeyAscii As Integer)
 
Select Case KeyAscii
   Case 13
    Label2.Caption = "Enter=" & KeyAscii
   Case 8
    Label2.Caption = "BackSpace=" & KeyAscii
   Case Else
     
    Label2.Caption = Chr(KeyAscii) & "=" & KeyAscii
End Select
 

  ' MsgBox "ASCII Code is : " & KeyAscii, vbInformation
End Sub

Private Sub Form_Load()
     myval = SetWindowPos(frmMain.hwnd, -1, 0, 0, 0, 0, 3)
 
End Sub

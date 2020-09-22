VERSION 5.00
Begin VB.Form frmTimerTest 
   Caption         =   "Form1"
   ClientHeight    =   1635
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2310
   LinkTopic       =   "Form1"
   ScaleHeight     =   1635
   ScaleWidth      =   2310
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSleep 
      Caption         =   "Command2"
      Height          =   675
      Left            =   120
      TabIndex        =   1
      Top             =   900
      Width           =   1755
   End
   Begin VB.CommandButton cmdWaitTimer 
      Caption         =   "Command1"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   180
      Width           =   1755
   End
End
Attribute VB_Name = "frmTimerTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub cmdWaitTimer_Click()
    Dim objTimer As clsWaitableTimer
    Set objTimer = New clsWaitableTimer
    
    cmdWaitTimer.Enabled = False
    objTimer.Wait 5000  '5 seconds
    cmdWaitTimer.Enabled = True
    Set objTimer = Nothing
End Sub

Private Sub cmdSleep_Click()
    cmdSleep.Enabled = False
    Sleep 5000 '5 seconds
    cmdSleep.Enabled = True
End Sub

Private Sub Form_Load()
    With frmTimerTest
        .Height = 1400
        .Width = 2400
        .Caption = "Test Timer"
    End With
    With cmdWaitTimer
        .Move 100, 100, 2000, 300
        .Caption = "SetWaitableTimer"
        .Enabled = True
    End With
    With cmdSleep
        .Move 100, 500, 2000, 300
        .Caption = "Sleep"
        .Enabled = True
    End With
End Sub


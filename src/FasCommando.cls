VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "FasCommando"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit

Public ModulId As Variant
Public Position As Long

Public Stack_Pointer_before
Public Stack_Pointer_After

Public Stack_Before
Public Stack_After

Public FasFile As FasFile

Public Disassembled_Short As String
Public Description As String


Private mvarCommando As Long
Private mvarParameters As Collection
Private mvarDisassembled As String

'lokale Variable(n) zum Zuweisen der Eigenschaft(en)
Private mvarInterpreted As String 'lokale Kopie
Public Property Let Interpreted(ByVal vData)
    mvarInterpreted = vData
End Property


Public Property Get Interpreted()
    Interpreted = mvarInterpreted
End Property




Public Property Let Disassembled(ByVal vData As String)
    mvarDisassembled = vData
End Property
Public Property Get Disassembled() As String
    Disassembled = mvarDisassembled
End Property



Public Property Set Parameters(ByVal vData As Collection)
    Set mvarParameters = vData
End Property
Public Property Get Parameters() As Collection
    Set Parameters = mvarParameters
End Property



Public Property Let Commando(ByVal vData As Long)
    mvarCommando = vData
End Property
Public Property Get Commando() As Long
    Commando = mvarCommando
End Property




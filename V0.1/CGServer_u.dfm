object frmServer: TfrmServer
  Left = 0
  Top = 0
  Caption = 'Server'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    Left = 112
    Top = 104
  end
  object DataSource1: TDataSource
    Left = 264
    Top = 104
  end
  object SQLTable1: TSQLTable
    Left = 344
    Top = 112
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    Left = 32
    Top = 32
  end
end

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
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    Left = 96
    Top = 112
  end
  object DataSource1: TDataSource
    Left = 200
    Top = 112
  end
  object SQLTable1: TSQLTable
    Left = 320
    Top = 128
  end
end

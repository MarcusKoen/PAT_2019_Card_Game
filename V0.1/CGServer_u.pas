unit CGServer_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Data.Win.ADODB;

type
  TfrmServer = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    SQLTable1: TSQLTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServer: TfrmServer;

implementation

{$R *.dfm}

end.

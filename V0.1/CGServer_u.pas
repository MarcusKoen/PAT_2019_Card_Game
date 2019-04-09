unit CGServer_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Data.Win.ADODB, System.Win.ScktComp, Vcl.Grids, Vcl.DBGrids;

type
  TfrmServer = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ServerSocket1: TServerSocket;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServer: TfrmServer;

implementation

{$R *.dfm}

procedure TfrmServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ServerSocket1.Active := False;
end;

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  ServerSocket1.Port := 23;
  ServerSocket1.Active := True;
end;

end.

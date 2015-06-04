unit pGCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TGCode = class(TObject)
  G:Integer;
  M:Integer;
  X:Double;
  Y:Double;
  Z:Double;
  CWCCW:Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

function addGCodeLine(s:string):TGCode;
begin
    Result:=TGCode.Create;
end;

end.

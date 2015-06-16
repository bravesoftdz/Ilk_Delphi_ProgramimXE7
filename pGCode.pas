unit pGCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,GLscene,VectorGeometry,GLRenderContextInfo,pSetup,OpenGLAdapter,
  GLContext,OpenGLTokens;
type
  TObjectMode = (omNone, omMove, omCopy, omMoveNode, omMoveCol, omMoveRow, omAddNode, omAlignZ, omConnectZ); //bunu pclasses gibi ba�ka bir unite ta�an�abilir
type
  TGCode = class(TCollectionItem)
  private
    { Private declarations }
  public
    WamI:string;
    StartV:TAffineVector;
    EndV:TAffineVector;
    CenterV:TAffineVector;
    IV:TAffineVector;
    JV:TAffineVector;
    KV:TAffineVector;
    SegmentLenght:Double;     // setup olu�turulup ondan alsak daha ��k olur
    procedure Draw(setup: TSetup; var rci: TRenderContextInfo);
    { Public declarations }
  end;

  TGs=class(TOwnedCollection)
  private
    function GetItem(index: integer): TGCode;
    procedure SetItem(index: integer; const Value: TGCode);

  public
    // Text i tutan linelar� tutan bir stringlist eklenebilir
    // Fakat strintg listteki line n�n kar��l���n�da bilmek istiyorum daha sonra yapal�m
    function add: TGCode;
    property Items[index: integer]: TGCode read GetItem write SetItem ; Default;
  end;

  TGGeo = class(TGLCustomSceneObject)
    private
    FObjectMode: TObjectMode;
    procedure SetObjectMode(const Value: TObjectMode);

    public
      Gs:TGs;
      Step: Integer;
      Changed: Boolean;
      Deleted:Boolean;
      constructor Create(AOwner: TComponent);override;
      destructor Destroy;override;
      procedure doRender(var rci: TRenderContextInfo; renderSelf, renderChildren: Boolean); Override;
      procedure BuildList(var rci: TRenderContextInfo); Override;
      procedure Startedit; virtual;
      Property ObjectMode: TObjectMode Read FObjectMode Write SetObjectMode;
      procedure UnDelete;
      procedure Delete;
  end;

implementation

{ TG0 }

function TGs.add: TGCode;
begin
    Result:=TGCode(inherited add);
end;

function TGs.GetItem(index: integer): TGCode;
begin
    Result:= TGCode(inherited GetItem(index));
end;

procedure TGs.SetItem(index: integer; const Value: TGCode);
begin
    inherited SetItem(index,Value);
end;

{ TGGeo }

procedure TGGeo.BuildList(var rci: TRenderContextInfo);
begin
  inherited;
  // burda object mode g�re baz� ge�i� i�lemleri yap�labilir ta��n�rken kes�ikli �izgilerin filan g�sterilmnesi gibi.
  // ama burda opengl cal���yoruz vertex lerle filan yani begin end lerle filan burda �al���rken dikkatli olunmal�
end;

constructor TGGeo.Create(AOwner: TComponent);
begin
  inherited;
  Gs:=TGs.Create(Self,TGCode);
  Changed:=True;
  Deleted:=False;
end;

procedure TGGeo.Delete;
begin
Deleted:=True;
Changed:=True;
StructureChanged;
end;

destructor TGGeo.Destroy;
begin
  Gs.Free;
  inherited;
end;

procedure TGGeo.doRender(var rci: TRenderContextInfo; renderSelf, renderChildren: Boolean);
begin
  inherited;

end;

procedure TGGeo.SetObjectMode(const Value: TObjectMode);
begin
  FObjectMode := Value;
  Step := 0;
  Structurechanged;
end;

procedure TGGeo.Startedit;
begin
  inherited;

end;

procedure TGGeo.UnDelete;
begin
  Deleted:=False;
  Changed:=True;
  StructureChanged;
end;

{ TGCode }

procedure TGCode.Draw(setup: TSetup; var rci: TRenderContextInfo);
begin
//    gl.Enable(gl_color_material);
//    gl.Disable(gl_line_stipple);
//
//
//    gl.Disable(gl_color_material);
end;

end.

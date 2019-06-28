unit Simple.Navigator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Navigator, FMX.MultiView, FMX.Effects, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSimpleNavigator = class(TForm)
    MultiView: TMultiView;
    Button1: TButton;
    Navigator: TNavigator;
    procedure Button1Click(Sender: TObject);
    procedure NavigatorGetMainForm(out AFrame: TFrame);

  public

  end;

var
  SimpleNavigator: TSimpleNavigator;

implementation

{$R *.fmx}

uses Simple.Master;

procedure TSimpleNavigator.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TSimpleNavigator.NavigatorGetMainForm(out AFrame: TFrame);
begin
  AFrame := TSimpleMaster.Create(Navigator);
end;

end.
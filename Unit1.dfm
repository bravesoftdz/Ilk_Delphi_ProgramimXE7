object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Caption'
  ClientHeight = 464
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 337
    Top = 44
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 8
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Dosya oku'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 8
    Top = 72
    Width = 523
    Height = 384
    Camera = GLCamera1
    Buffer.BackgroundColor = clBlack
    Buffer.FaceCulling = False
    FieldOfView = 150.806854248046900000
    OnMouseMove = GLSceneViewer1MouseMove
    OnMouseWheel = GLSceneViewer1MouseWheel
    OnMouseWheelDown = GLSceneViewer1MouseWheelDown
    OnKeyDown = GLSceneViewer1KeyDown
    TabOrder = 1
  end
  object Button2: TButton
    Left = 223
    Top = 41
    Width = 90
    Height = 25
    Caption = 'IsLeapYear m'#305'?'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 41
    Width = 105
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button3: TButton
    Left = 416
    Top = 41
    Width = 115
    Height = 25
    Caption = 'Kamera Ba'#351'lang'#305#231' Poz.'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 8
    Width = 115
    Height = 25
    Caption = 'Perspective/Ort.'
    TabOrder = 5
    OnClick = Button4Click
  end
  object TrackBar1: TTrackBar
    Left = 248
    Top = 8
    Width = 150
    Height = 19
    Max = 100
    Min = 10
    Position = 10
    TabOrder = 6
    OnChange = TrackBar1Change
  end
  object GLScene1: TGLScene
    Left = 16
    Top = 79
    object GLCamera1: TGLCamera
      DepthOfView = 1000000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = GLDummyCube1
      Position.Coordinates = {0000484300004843000048430000803F}
      Direction.Coordinates = {000000000000803F0000008000000000}
      Up.Coordinates = {00000000000000000000803F00000000}
      object GLLightSource1: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        SpotCutOff = 180.000000000000000000
      end
    end
    object GLDummyCube1: TGLDummyCube
      ShowAxes = True
      CubeSize = 100.000000000000000000
      VisibleAtRunTime = True
    end
    object GLFreeForm1: TGLFreeForm
    end
  end
end

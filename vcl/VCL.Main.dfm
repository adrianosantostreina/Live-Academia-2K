object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 566
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 177
    Height = 25
    Caption = 'Listar Usu'#225'rios'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 793
    Height = 494
    DataSource = dtsUsuarios
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipousuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_perfil'
        Visible = True
      end>
  end
  object dtsUsuarios: TDataSource
    DataSet = ServiceUsuarios.MemUsuarios
    Left = 64
    Top = 136
  end
end

object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  Caption = 'FrmCadProduto'
  ClientHeight = 690
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object pnlContainer: TPanel
    Left = 0
    Top = 65
    Width = 1024
    Height = 625
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1018
    ExplicitHeight = 616
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1022
      Height = 623
      ActivePage = TabCadastro
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 65
      ExplicitWidth = 1024
      ExplicitHeight = 625
      object TabCadastro: TTabSheet
        Caption = 'Cadastro'
      end
      object TabConsulta: TTabSheet
        Caption = 'Consulta'
        ImageIndex = 1
      end
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 65
    Align = alTop
    Caption = 'Car managment'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 1018
  end
end

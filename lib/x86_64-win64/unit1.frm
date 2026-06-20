object Form1: TForm1
  Left = 348
  Height = 691
  Top = 259
  Width = 1232
  Caption = 'Form1'
  ClientHeight = 691
  ClientWidth = 1232
  Color = clHighlightText
  LCLVersion = '6.3'
  object Chart1: TChart
    Left = 448
    Height = 160
    Top = 40
    Width = 392
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Amplitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Sequence [n]'
      end>
    BackColor = clBtnHighlight
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Input'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart1BSplineSeries1: TBSplineSeries
      Pointer.Visible = False
    end
    object Chart1LineSeries1: TLineSeries
    end
    object Chart1LineSeries2: TLineSeries
    end
  end
  object Chart4: TChart
    Left = 448
    Height = 152
    Top = 360
    Width = 392
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Amplitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Sequence [n]'
      end>
    BackColor = clBtnHighlight
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Filtered Noise'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart4BSplineSeries1: TBSplineSeries
      Pen.Color = clRed
      Pointer.Visible = False
    end
  end
  object Chart5: TChart
    Left = 448
    Height = 176
    Top = 512
    Width = 776
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Amplitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Sequence [n]'
      end>
    BackColor = clBtnHighlight
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Legend.Visible = True
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Input, Backward, Forward'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart5BSplineSeries1: TBSplineSeries
      Title = 'Forward'
      Pen.Color = clBlue
      Pointer.Visible = False
    end
    object Chart5BSplineSeries2: TBSplineSeries
      Title = 'Backward'
      Pen.Color = clRed
      Pointer.Visible = False
    end
    object Chart5BSplineSeries3: TBSplineSeries
      Title = 'Input'
      Pen.Color = clYellow
      Pointer.Visible = False
    end
  end
  object Chart6: TChart
    Left = 840
    Height = 160
    Top = 40
    Width = 384
    AxisList = <    
      item
        Intervals.Count = 10
        Intervals.NiceSteps = '0.1|0.2|0.3'
        Intervals.Options = [aipUseCount, aipUseMaxLength, aipUseMinLength, aipUseNiceSteps]
        Minors = <>
        Range.Max = 1
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Magnitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Frequency (Hz)'
      end>
    BackColor = clBtnHighlight
    Extent.YMax = 1
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Frequency Response of Input'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart6BarSeries1: TBarSeries
      BarBrush.Color = clRed
      BarWidthPercent = 100
      Depth = 1
    end
  end
  object Chart3: TChart
    Left = 448
    Height = 160
    Top = 200
    Width = 392
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Amplitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Sequence [n]'
      end>
    BackColor = clBtnHighlight
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Output'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart3BSplineSeries1: TBSplineSeries
      Pen.Color = clBlue
      Pointer.Visible = False
    end
  end
  object Chart7: TChart
    Left = 840
    Height = 160
    Top = 200
    Width = 384
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Magnitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Frequency (Hz)'
      end>
    BackColor = clBtnHighlight
    Extent.YMax = 1
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Frequency Response of Output'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart7BarSeries1: TBarSeries
      BarBrush.Color = clRed
      Depth = 1
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Height = 456
    Top = 232
    Width = 424
    ActivePage = TabSheet2
    TabIndex = 1
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'MAV'
      ClientHeight = 428
      ClientWidth = 416
      object TrackBar1: TTrackBar
        Left = 80
        Height = 25
        Top = 88
        Width = 324
        Max = 100
        Min = 1
        OnChange = TrackBar1Change
        Position = 1
        TabOrder = 0
      end
      object Label9: TLabel
        Left = 8
        Height = 15
        Top = 88
        Width = 41
        Caption = 'ORDE ='
        ParentColor = False
      end
      object Label1: TLabel
        Left = 288
        Height = 15
        Top = 16
        Width = 6
        Caption = '1'
        ParentColor = False
      end
      object GroupBox4: TGroupBox
        Left = 8
        Height = 57
        Top = 16
        Width = 392
        Caption = 'Frequency Response'
        ClientHeight = 37
        ClientWidth = 388
        TabOrder = 1
        object Button2: TButton
          Left = 8
          Height = 25
          Top = 1
          Width = 88
          Caption = 'Input Signal'
          OnClick = Button2Click
          TabOrder = 0
        end
        object Button3: TButton
          Left = 152
          Height = 25
          Top = 0
          Width = 88
          Caption = 'Output Signal'
          OnClick = Button3Click
          TabOrder = 1
        end
        object Button4: TButton
          Left = 296
          Height = 24
          Top = 1
          Width = 88
          Caption = 'Filtered Noise'
          OnClick = Button4Click
          TabOrder = 2
        end
      end
      object Chart2: TChart
        Left = 80
        Height = 256
        Top = 128
        Width = 320
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
            Title.Visible = True
            Title.Caption = 'H (f/fs)'
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Normalization Frequency'
          end>
        BackColor = clBtnHighlight
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Respon Magnitude'
        )
        Title.Visible = True
        Color = clBtnHighlight
        object Chart2BSplineSeries1: TBSplineSeries
          Pointer.Visible = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'LFR'
      ClientHeight = 428
      ClientWidth = 416
      object Button5: TButton
        Left = 328
        Height = 87
        Top = 8
        Width = 80
        Caption = 'LOAD DATA'
        OnClick = Button5Click
        TabOrder = 0
      end
      object LabeledEdit1: TLabeledEdit
        Left = 88
        Height = 23
        Top = 24
        Width = 80
        EditLabel.AnchorSideLeft.Control = LabeledEdit1
        EditLabel.AnchorSideRight.Control = LabeledEdit1
        EditLabel.AnchorSideRight.Side = asrBottom
        EditLabel.AnchorSideBottom.Control = LabeledEdit1
        EditLabel.Left = 88
        EditLabel.Height = 15
        EditLabel.Top = 6
        EditLabel.Width = 80
        EditLabel.Caption = 'Data'
        EditLabel.ParentColor = False
        TabOrder = 1
      end
      object LabeledEdit2: TLabeledEdit
        Left = 88
        Height = 23
        Top = 72
        Width = 80
        EditLabel.AnchorSideLeft.Control = LabeledEdit2
        EditLabel.AnchorSideRight.Control = LabeledEdit2
        EditLabel.AnchorSideRight.Side = asrBottom
        EditLabel.AnchorSideBottom.Control = LabeledEdit2
        EditLabel.Left = 88
        EditLabel.Height = 15
        EditLabel.Top = 54
        EditLabel.Width = 80
        EditLabel.Caption = 'Freq. Sampling'
        EditLabel.ParentColor = False
        TabOrder = 2
      end
      object ListBox1: TListBox
        Left = 8
        Height = 168
        Top = 256
        Width = 128
        ItemHeight = 0
        TabOrder = 3
      end
      object GroupBox10: TGroupBox
        Left = 8
        Height = 89
        Top = 8
        Width = 73
        Caption = 'Method'
        ClientHeight = 69
        ClientWidth = 69
        TabOrder = 4
        object RadioButton16: TRadioButton
          Left = 5
          Height = 19
          Top = 8
          Width = 62
          Caption = 'Syntesis'
          TabOrder = 0
        end
        object RadioButton17: TRadioButton
          Left = 5
          Height = 19
          Top = 32
          Width = 63
          Caption = 'Baseline'
          TabOrder = 1
        end
      end
      object GroupBox11: TGroupBox
        Left = 184
        Height = 89
        Top = 8
        Width = 137
        Caption = 'Syntesis Baseline'
        ClientHeight = 69
        ClientWidth = 133
        TabOrder = 5
        object Edit17: TEdit
          Left = 48
          Height = 23
          Top = 4
          Width = 80
          TabOrder = 0
          Text = 'Edit17'
        end
        object Edit18: TEdit
          Left = 48
          Height = 23
          Top = 32
          Width = 80
          TabOrder = 1
          Text = 'Edit18'
        end
        object Label16: TLabel
          Left = 8
          Height = 15
          Top = 8
          Width = 29
          Caption = 'Amp.'
          ParentColor = False
        end
        object Label20: TLabel
          Left = 8
          Height = 15
          Top = 40
          Width = 26
          Caption = 'Freq.'
          ParentColor = False
        end
      end
      object TrackBar4: TTrackBar
        Left = 88
        Height = 25
        Top = 104
        Width = 237
        Max = 30
        OnChange = TrackBar4Change
        Position = 0
        TabOrder = 6
      end
      object Label21: TLabel
        Left = 8
        Height = 15
        Top = 104
        Width = 36
        Caption = 'ORDE: '
        ParentColor = False
      end
      object ListBox2: TListBox
        Left = 144
        Height = 168
        Top = 256
        Width = 128
        ItemHeight = 0
        TabOrder = 7
      end
      object ListBox4: TListBox
        Left = 280
        Height = 168
        Top = 256
        Width = 127
        ItemHeight = 0
        TabOrder = 8
      end
      object Chart16: TChart
        Left = 8
        Height = 118
        Top = 128
        Width = 400
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
          end>
        BackColor = clBtnHighlight
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Trend Signal'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart16LineSeries1: TLineSeries
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'FOURIER TRANSFORM'
      ClientHeight = 428
      ClientWidth = 416
      object GroupBox5: TGroupBox
        Left = 8
        Height = 57
        Top = 48
        Width = 392
        Caption = 'Frequency Input'
        ClientHeight = 37
        ClientWidth = 388
        TabOrder = 0
        object Edit11: TEdit
          Left = 40
          Height = 23
          Top = 0
          Width = 64
          TabOrder = 0
          Text = '50'
        end
        object Edit12: TEdit
          Left = 176
          Height = 23
          Top = 0
          Width = 64
          TabOrder = 1
          Text = '200'
        end
        object Edit13: TEdit
          Left = 312
          Height = 23
          Top = 0
          Width = 64
          TabOrder = 2
          Text = '50'
        end
        object Label2: TLabel
          Left = 8
          Height = 15
          Top = 8
          Width = 26
          Caption = 'F cut'
          ParentColor = False
        end
        object Label15: TLabel
          Left = 136
          Height = 15
          Top = 8
          Width = 35
          Caption = 'F High'
          ParentColor = False
        end
        object Label18: TLabel
          Left = 272
          Height = 15
          Top = 8
          Width = 31
          Caption = 'F Low'
          ParentColor = False
        end
      end
      object TrackBar3: TTrackBar
        Left = 80
        Height = 20
        Top = 112
        Width = 268
        Max = 100
        Min = 1
        OnChange = TrackBar3Change
        Position = 1
        TabOrder = 1
      end
      object GroupBox6: TGroupBox
        Left = 8
        Height = 41
        Top = 0
        Width = 392
        Caption = 'Filter'
        ClientHeight = 21
        ClientWidth = 388
        TabOrder = 2
        object RadioButton3: TRadioButton
          Left = 8
          Height = 19
          Top = 0
          Width = 39
          Caption = 'LPF'
          TabOrder = 0
        end
        object RadioButton4: TRadioButton
          Left = 88
          Height = 19
          Top = 0
          Width = 42
          Caption = 'HPF'
          TabOrder = 1
        end
        object RadioButton5: TRadioButton
          Left = 184
          Height = 19
          Top = 0
          Width = 40
          Caption = 'BPF'
          TabOrder = 2
        end
        object RadioButton6: TRadioButton
          Left = 280
          Height = 19
          Top = 0
          Width = 39
          Caption = 'BSF'
          TabOrder = 3
        end
      end
      object Label19: TLabel
        Left = 8
        Height = 15
        Top = 112
        Width = 38
        Caption = 'ORDE='
        ParentColor = False
      end
      object Chart8: TChart
        Left = 8
        Height = 96
        Top = 232
        Width = 388
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Sequence (n)'
          end>
        BackColor = clBtnHighlight
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Impulse Respons H[n]'
        )
        Title.Visible = True
        Color = clBtnHighlight
        object Chart8BarSeries1: TBarSeries
          BarBrush.Color = clRed
        end
      end
      object Label17: TLabel
        Left = 360
        Height = 15
        Top = 112
        Width = 24
        Caption = 'TAP:'
        ParentColor = False
      end
      object Chart10: TChart
        Left = 8
        Height = 96
        Top = 136
        Width = 388
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Sequence (n)'
          end>
        BackColor = clHighlightText
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Filter Ideal'
        )
        Title.Visible = True
        Color = clBtnHighlight
        object Chart10LineSeries1: TLineSeries
        end
      end
      object Chart11: TChart
        Left = 8
        Height = 96
        Top = 328
        Width = 388
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Ohm'
          end>
        BackColor = clBtnHighlight
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Frequency Respons H(ohm)'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart11BSplineSeries1: TBSplineSeries
          Pointer.Visible = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'WINDOW'
      ClientHeight = 428
      ClientWidth = 416
      object GroupBox7: TGroupBox
        Left = 8
        Height = 44
        Top = 48
        Width = 400
        Caption = 'Method'
        ClientHeight = 24
        ClientWidth = 396
        TabOrder = 0
        object RadioButton7: TRadioButton
          Left = 8
          Height = 19
          Top = 0
          Width = 83
          Caption = 'Rectangular'
          TabOrder = 0
        end
        object RadioButton8: TRadioButton
          Left = 96
          Height = 19
          Top = 0
          Width = 54
          Caption = 'Barlett'
          TabOrder = 1
        end
        object RadioButton9: TRadioButton
          Left = 160
          Height = 19
          Top = 0
          Width = 66
          Caption = 'Hanning'
          TabOrder = 2
        end
        object RadioButton10: TRadioButton
          Left = 240
          Height = 19
          Top = 0
          Width = 74
          Caption = 'Hamming'
          TabOrder = 3
        end
        object RadioButton11: TRadioButton
          Left = 320
          Height = 19
          Top = 0
          Width = 72
          Caption = 'Blackman'
          TabOrder = 4
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Height = 41
        Top = 0
        Width = 401
        Caption = 'Filter'
        ClientHeight = 21
        ClientWidth = 397
        TabOrder = 1
        object RadioButton12: TRadioButton
          Left = 8
          Height = 19
          Top = 0
          Width = 39
          Caption = 'LPF'
          TabOrder = 0
        end
        object RadioButton13: TRadioButton
          Left = 104
          Height = 19
          Top = 0
          Width = 42
          Caption = 'HPF'
          TabOrder = 1
        end
        object RadioButton14: TRadioButton
          Left = 216
          Height = 19
          Top = 0
          Width = 40
          Caption = 'BPF'
          TabOrder = 2
        end
        object RadioButton15: TRadioButton
          Left = 321
          Height = 19
          Top = 0
          Width = 39
          Caption = 'BSF'
          TabOrder = 3
        end
      end
      object GroupBox9: TGroupBox
        Left = 8
        Height = 49
        Top = 96
        Width = 400
        Caption = 'Frequency Input'
        ClientHeight = 29
        ClientWidth = 396
        TabOrder = 2
        object Edit14: TEdit
          Left = 40
          Height = 23
          Top = 0
          Width = 80
          TabOrder = 0
          Text = '50'
        end
        object Edit15: TEdit
          Left = 168
          Height = 23
          Top = 0
          Width = 80
          TabOrder = 1
          Text = '20'
        end
        object Edit16: TEdit
          Left = 304
          Height = 23
          Top = 0
          Width = 80
          TabOrder = 2
          Text = '200'
        end
        object Label24: TLabel
          Left = 8
          Height = 15
          Top = 8
          Width = 25
          Caption = 'FCut'
          ParentColor = False
        end
        object Label25: TLabel
          Left = 136
          Height = 15
          Top = 8
          Width = 25
          Caption = 'Flow'
          ParentColor = False
        end
        object Label26: TLabel
          Left = 264
          Height = 15
          Top = 7
          Width = 32
          Caption = 'FHigh'
          ParentColor = False
        end
      end
      object TrackBar2: TTrackBar
        Left = 72
        Height = 25
        Top = 152
        Width = 272
        Max = 100
        OnChange = TrackBar2Change
        Position = 0
        TabOrder = 3
      end
      object Label22: TLabel
        Left = 8
        Height = 15
        Top = 152
        Width = 41
        Caption = 'ORDE ='
        ParentColor = False
      end
      object Label23: TLabel
        Left = 352
        Height = 15
        Top = 152
        Width = 24
        Caption = 'TAP:'
        ParentColor = False
      end
      object Chart12: TChart
        Left = 8
        Height = 120
        Top = 184
        Width = 200
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Sequence (n)'
          end>
        BackColor = clHighlightText
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Impulse Response w[n]'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart12BarSeries1: TBarSeries
          BarBrush.Color = clRed
        end
      end
      object Chart13: TChart
        Left = 208
        Height = 120
        Top = 184
        Width = 200
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Sequence (n)'
          end>
        BackColor = clHighlightText
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Impulse Response hw[n]'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart13BarSeries1: TBarSeries
          BarBrush.Color = clRed
        end
      end
      object Chart14: TChart
        Left = 8
        Height = 120
        Top = 304
        Width = 200
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Sequence (n)'
          end>
        BackColor = clHighlightText
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Ideal Filter'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart14LineSeries1: TLineSeries
        end
      end
      object Chart15: TChart
        Left = 208
        Height = 120
        Top = 304
        Width = 200
        AxisList = <        
          item
            Minors = <>
            Title.LabelFont.Orientation = 900
          end        
          item
            Alignment = calBottom
            Minors = <>
            Title.Visible = True
            Title.Caption = 'Ohm'
          end>
        BackColor = clHighlightText
        Foot.Brush.Color = clBtnFace
        Foot.Font.Color = clBlue
        Title.Brush.Color = clBtnFace
        Title.Font.Color = clBlue
        Title.Text.Strings = (
          'Frequency Response Filter'
        )
        Title.Visible = True
        Color = clHighlightText
        object Chart15BSplineSeries1: TBSplineSeries
          Pointer.Visible = False
        end
      end
    end
  end
  object Chart9: TChart
    Left = 840
    Height = 152
    Top = 360
    Width = 384
    AxisList = <    
      item
        Minors = <>
        Title.LabelFont.Orientation = 900
        Title.Visible = True
        Title.Caption = 'Magnitudo'
      end    
      item
        Alignment = calBottom
        Minors = <>
        Title.Visible = True
        Title.Caption = 'Frequency (Hz)'
      end>
    BackColor = clBtnHighlight
    Extent.YMax = 1
    Foot.Brush.Color = clBtnFace
    Foot.Font.Color = clBlue
    Title.Brush.Color = clBtnFace
    Title.Font.Color = clBlue
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Frequency Response of Filtered Noise'
    )
    Title.Visible = True
    Color = clBtnHighlight
    object Chart9BarSeries1: TBarSeries
      BarBrush.Color = clRed
      Depth = 1
    end
  end
  object Label3: TLabel
    Left = 448
    Height = 25
    Top = 8
    Width = 284
    Caption = 'FINITE IMPULSE RESPONSE'
    Font.CharSet = ANSI_CHARSET
    Font.Height = -21
    Font.Name = 'Futura Md BT'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 8
    Height = 56
    Top = 40
    Width = 304
    Caption = 'Choose Signal'
    ClientHeight = 36
    ClientWidth = 300
    TabOrder = 8
    object RadioButton1: TRadioButton
      Left = 8
      Height = 19
      Top = 8
      Width = 74
      Caption = 'Sine Wave'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 128
      Height = 19
      Top = 8
      Width = 88
      Caption = 'Square Wave'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Height = 128
    Top = 96
    Width = 304
    Caption = 'Input Signal'
    ClientHeight = 108
    ClientWidth = 300
    TabOrder = 9
    object Edit1: TEdit
      Left = 26
      Height = 23
      Top = 8
      Width = 56
      TabOrder = 0
      Text = '1'
    end
    object Edit2: TEdit
      Left = 128
      Height = 23
      Top = 8
      Width = 56
      TabOrder = 1
      Text = '1'
    end
    object Edit3: TEdit
      Left = 232
      Height = 23
      Top = 8
      Width = 56
      TabOrder = 2
      Text = '2'
    end
    object Edit4: TEdit
      Left = 26
      Height = 23
      Top = 40
      Width = 56
      TabOrder = 3
      Text = '25'
    end
    object Edit5: TEdit
      Left = 128
      Height = 23
      Top = 40
      Width = 56
      TabOrder = 4
      Text = '150'
    end
    object Edit6: TEdit
      Left = 232
      Height = 23
      Top = 40
      Width = 56
      TabOrder = 5
      Text = '250'
    end
    object Edit7: TEdit
      Left = 184
      Height = 23
      Top = 72
      Width = 56
      TabOrder = 6
      Text = '1000'
    end
    object Edit8: TEdit
      Left = 72
      Height = 23
      Top = 72
      Width = 56
      TabOrder = 7
      Text = '1000'
    end
    object Label4: TLabel
      Left = 8
      Height = 15
      Top = 16
      Width = 14
      Caption = 'A1'
      ParentColor = False
    end
    object Label5: TLabel
      Left = 112
      Height = 15
      Top = 16
      Width = 14
      Caption = 'A2'
      ParentColor = False
    end
    object Label6: TLabel
      Left = 212
      Height = 15
      Top = 16
      Width = 14
      Caption = 'A3'
      ParentColor = False
    end
    object Label7: TLabel
      Left = 8
      Height = 15
      Top = 48
      Width = 12
      Caption = 'F1'
      ParentColor = False
    end
    object Label8: TLabel
      Left = 112
      Height = 15
      Top = 48
      Width = 12
      Caption = 'F2'
      ParentColor = False
    end
    object Label10: TLabel
      Left = 212
      Height = 15
      Top = 48
      Width = 12
      Caption = 'F3'
      ParentColor = False
    end
    object Label11: TLabel
      Left = 40
      Height = 15
      Top = 80
      Width = 29
      Caption = 'DATA'
      ParentColor = False
    end
    object Label12: TLabel
      Left = 168
      Height = 15
      Top = 80
      Width = 12
      Caption = 'FS'
      ParentColor = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 323
    Height = 127
    Top = 40
    Width = 109
    Caption = 'White Noise'
    ClientHeight = 107
    ClientWidth = 105
    TabOrder = 10
    object Edit9: TEdit
      Left = 40
      Height = 23
      Top = 8
      Width = 56
      TabOrder = 0
      Text = '0'
    end
    object Edit10: TEdit
      Left = 40
      Height = 23
      Top = 48
      Width = 56
      TabOrder = 1
      Text = '0,3'
    end
    object Label13: TLabel
      Left = 8
      Height = 15
      Top = 15
      Width = 30
      Caption = 'Mean'
      ParentColor = False
    end
    object Label14: TLabel
      Left = 8
      Height = 15
      Top = 56
      Width = 30
      Caption = 'StDev'
      ParentColor = False
    end
  end
  object Button1: TButton
    Left = 323
    Height = 48
    Top = 176
    Width = 109
    Caption = 'SET'
    OnClick = Button1Click
    TabOrder = 11
  end
  object OpenDialog1: TOpenDialog
    Left = 352
  end
end

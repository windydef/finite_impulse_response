unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAFuncSeries, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus, math;

type
     arraybaru = array[-99999..99999] of extended;
     arraymat = array [0..99,0..99] of extended;
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Chart1: TChart;
    Chart10: TChart;
    Chart10LineSeries1: TLineSeries;
    Chart11: TChart;
    Chart11BSplineSeries1: TBSplineSeries;
    Chart12: TChart;
    Chart12BarSeries1: TBarSeries;
    Chart13: TChart;
    Chart13BarSeries1: TBarSeries;
    Chart14: TChart;
    Chart14LineSeries1: TLineSeries;
    Chart15: TChart;
    Chart15BSplineSeries1: TBSplineSeries;
    Chart16: TChart;
    Chart16LineSeries1: TLineSeries;
    Chart1BSplineSeries1: TBSplineSeries;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart2: TChart;
    Chart2BSplineSeries1: TBSplineSeries;
    Chart3: TChart;
    Chart3BSplineSeries1: TBSplineSeries;
    Chart4: TChart;
    Chart4BSplineSeries1: TBSplineSeries;
    Chart5: TChart;
    Chart5BSplineSeries1: TBSplineSeries;
    Chart5BSplineSeries2: TBSplineSeries;
    Chart5BSplineSeries3: TBSplineSeries;
    Chart6: TChart;
    Chart6BarSeries1: TBarSeries;
    Chart7: TChart;
    Chart7BarSeries1: TBarSeries;
    Chart8: TChart;
    Chart8BarSeries1: TBarSeries;
    Chart9: TChart;
    Chart9BarSeries1: TBarSeries;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure inputsinus;
    procedure inputsquare;
    procedure magresp(ord: integer);
    procedure outputfiltersquare;
    procedure outputfiltersinus;
    procedure DFT(x : arraybaru; dt:integer);
    procedure datainput(nm_file:string);
    procedure filterfourier(q: integer);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure FourierTransform(inputsig: arraybaru);
    procedure frekuensiidealft(nn: integer);
    procedure responfilterft(hh: arraybaru);
    procedure TrackBar4Change(Sender: TObject);
    procedure windowmethod(inputsig: arraybaru);
    procedure frekuensiidealwindow(nn: integer);
    procedure filterwindow(q: integer);
    procedure lfr(x: arraybaru);
    procedure invers(orde:integer);

  private

  public

  end;

var
  Form1: TForm1;
  a1, a2, a3, f1, f2, f3, mean, stdev: extended;  //INISIALISASI INPUT SIGNAL
  fs, jmldata, i, j, h, g, k, n, M, ii: integer;
  noise,sinus, input, sq, noise2: arraybaru;  //INPUT ARRAY
  real, imj, magnitude, magsinyal, magsinyal1, magsinyal2, magsinyal3, magsinyal4, magsinyal5: arraybaru; //DFT

  //MAV//
  outputfdsin, outputsfdsin, outputbksin, outputsbksin, outputfinsin, outputsfinsin, noisin: arraybaru; //OUTPUT SINUS
  outputfdsq, outputsfdsq, outputbksq, outputsbksq, outputfinsq, outputsfinsq, noisq: arraybaru; //OUTPUT SQUARE
  hf, f: extended; //MAGNITUDE RESPONSE

  //LFR//
  filename:textfile;  //DATA
  sample, x1, sinusfl, x1syn: arraybaru;
  t, l, fsfl, afl, ffl: extended;
  jmldatafl, aa, m1: integer;
  sl: tstringlist;
  //mat1, mat2, mat3, mat4, mat5: extended;
 // datamat, inv: arraymat;
  outlfr, noiselfr: arraybaru;
  b, mat: arraymat;


  //FOURIER TRANSFORM//
  fhigh, flow, fcut, omegah, omegal, omegac, ordeft: extended;
  Mft: integer;
  outft, outftf, outftb, noift: arraybaru;
  respimpulse, freqideal, resfil: arraybaru;

  //WINDOW//
  fhighw, floww, fcutw, omegahw, omegalw, omegacw, ordew: extended;
  Mfw: integer;
  hwindow, window, outw, outwf, outwb, noiw: arraybaru;
  freqidealw, resfilw, respimpulsew: arraybaru;
implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if radiobutton1.Checked = true then
  begin
    inputsinus;
  end else
  if radiobutton2.Checked = true then
  begin
    inputsquare
  end;
end;

procedure Tform1.inputsinus;         //INPUT SINUS
begin
  chart1bsplineseries1.Clear;
  chart1lineseries1.Clear;
   a1:= strtoint(edit1.text);
   a2:= strtoint(edit2.text);
   a3:= strtofloat(edit3.text);
   f1:= strtoint(edit4.text);
   f2:= strtoint(edit5.text);
   f3:= strtoint(edit6.text);
   fs:= strtoint(edit7.text);
   jmldata:=strtoint(edit8.text);
   M :=trackbar1.position;
   mean:= strtofloat(edit9.Text);
   stdev:= strtofloat(edit10.Text);

   for i :=0 to (jmldata-1) do
   begin
     noise[i]:= randg(mean,stdev);
     sinus[i]:=((a1*sin(2*pi*f1*i/fs))+(a2*sin(2*pi*f2*i/fs))+(a3*cos(2*pi*f3*i/fs)));
     input[i]:= sinus[i] + noise[i];
     chart1bsplineseries1.addxy(i,input[i]);
   end;
end;

procedure Tform1.inputsquare;                       //INPUT SQUARE
begin
  chart1lineseries1.Clear;
  chart1bsplineseries1.Clear;
  a1:= strtofloat(edit1.Text);
  f1:= strtoint(edit4.text);
  mean:= strtofloat(edit9.Text);
  stdev:= strtofloat(edit10.Text);
  jmldata:=strtoint(edit8.text);
  fs:= strtoint(edit7.text);

  for i:= 0 to (jmldata-1) do
  begin
    noise2[i]:= randg(mean,stdev);
    if (a1*sin(2*pi*f1*i/fs)) >= 0 then sq[i] := a1+ noise2[i]
    else
    sq[i] := noise2[i];
    chart1lineseries1.addxy(i,sq[i]);
    end;
end;

                                                 //  M  A  V  //

procedure TForm1.Button2Click(Sender: TObject);  //DFT INPUT
  begin
    chart6barseries1.Clear;
    if radiobutton1.Checked = true then
    begin;
      DFT(input,jmldata);
      magsinyal:=magnitude;
      for i:=1 to(jmldata div 2) do
      begin
        chart6barseries1.addxy(i*(fs div jmldata),magsinyal[i]);
      end;
    end else
    if radiobutton2.Checked = true then
    begin
      DFT(sq,jmldata);
      magsinyal1:=magnitude;
      for i:=1 to(jmldata div 2) do
          begin
          chart6barseries1.addxy(i*(fs div jmldata),magsinyal1[i]);
          end;
    end;
end;


procedure TForm1.DFT(x: arraybaru; dt:integer); //x input          //DFT
var
  k,n : integer;
  begin
    for k := 0 to (dt-1) do
        begin
          real[k] := 0;
          imj[k] := 0;
          magnitude[k]:= 0;
          for n := 0 to (dt-1) do
              begin
                real[k] := real[k] + (x[n]*cos(2*pi*k*n/dt));
                imj[k]   := imj[k] - (x[n]*sin(2*pi*k*n/dt));
                magnitude[k] := sqrt(sqr(real[k]) + sqr(imj[k]))/ dt;
              end;
        end;
 end;


procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  chart5bsplineseries1.clear;
  chart5bsplineseries2.Clear;
  chart5bsplineseries3.clear;
  chart3bsplineseries1.clear;
  chart4bsplineseries1.clear;
  label9.caption:= inttostr(trackbar1.position);
  M:= trackbar1.position;
  magresp(m);
   if radiobutton1.Checked = true then
   begin
     outputfiltersinus;
   end else
   if radiobutton2.Checked = true then
   begin
     outputfiltersquare;
   end;
end;

procedure Tform1.outputfiltersquare;                 //OUTPUT MAV SQUARE
begin
    chart5bsplineseries1.clear;
    chart5bsplineseries2.Clear;
    chart5bsplineseries3.clear;
    chart3bsplineseries1.clear;
    chart4bsplineseries1.clear;
    M :=trackbar1.position;

      for g:=0 to (jmldata-1) do
         begin
            outputfdsq[g]:=0;
            outputsfdsq[g]:=0;
            outputbksq[g]:=0;
            outputsbksin[g]:= 0;
            outputfinsq[g]:= 0;
            outputsfinsq[g]:= 0;
            noisq[g]:= 0;
         end;

    for i:= 0 to (jmldata-1) do
        begin
          sq[-i]:= sq[0];
          sq[jmldata +i] := sq[jmldata-1];
          outputsfdsq[jmldata +i] := outputsfdsq[jmldata-1];
        end;

    for i:=0 to (jmldata-1) do
        begin
          for k:=0 to (M-1)do
              begin
                outputfdsq[i]:=outputfdsq[i]+sq[i-k];   //forward
              end;
           outputsfdsq[i]:=outputfdsq[i]/M;
           chart5bsplineseries1.addxy(i,outputsfdsq[i]); //forward  plot gabungan
        end;

    for n:=0 to (jmldata-1) do
        begin
            for j:=0 to (M-1)do
                begin
                   outputbksq[n]:= outputbksq[n]+ sq[n+j];  //backward
                end;
             outputsbksq[n]:=outputbksq[n]/M;
             chart5bsplineseries2.addxy(n,outputsbksq[n]); //backward plot gabungan
        end;

    for h:=0 to (jmldata-1) do
        begin
            for j:=0 to (M-1)do
                begin
                   outputfinsq[h]:= outputfinsq[h] + outputsfdsq[h+j]; //final output
                end;
             outputsfinsq[h]:= outputfinsq[h]/M;
             noisq[h]:=(sq[h]-outputsfinsq[h]);
             chart4bsplineseries1.addxy(h,noisq[h]);      // filtered noise plot
             chart3bsplineseries1.addxy(h,outputsfinsq[h]); //final output plot
             chart5bsplineseries3.addxy(h,sq[h]);    // input plot
        end;

end;

procedure Tform1.outputfiltersinus;                     //OUTPUT MAV SINUS
begin
    chart5bsplineseries1.clear;
    chart5bsplineseries2.Clear;
    chart5bsplineseries3.clear;
    chart3bsplineseries1.clear;
    chart4bsplineseries1.clear;
    M :=trackbar1.position;

    for g:=0 to (jmldata-1) do
         begin
            outputfdsin[g]:=0;
            outputsfdsin[g]:=0;
            outputbksin[g]:=0;
            outputsbksin[g]:= 0;
            outputfinsin[g]:= 0;
            outputsfinsin[g]:= 0;
            noisin[g]:= 0;
         end;

     for i:= 0 to (jmldata-1) do
        begin
          input[-i]:= input[0];
          input[jmldata +i] := input[jmldata-1];
          outputsfdsin[jmldata +i] := outputsfdsin[jmldata-1];
        end;

    for i:=0 to (jmldata-1) do
        begin
          for k:=0 to (M-1)do
              begin
                outputfdsin[i]:=outputfdsin[i]+input[i-k];   //forward
              end;
           outputsfdsin[i]:=outputfdsin[i]/M;
           chart5bsplineseries1.addxy(i,outputsfdsin[i]); //forward  plot gabungan
        end;

    for n:=0 to (jmldata-1) do
        begin
            for j:=0 to (M-1)do
                begin
                   outputbksin[n]:= outputbksin[n]+ input[n+j];  //backward
                end;
             outputsbksin[n]:=outputbksin[n]/M;
             chart5bsplineseries2.addxy(n,outputsbksin[n]); //backward plot gabungan
        end;

    for h:=0 to (jmldata-1) do
        begin
            for j:=0 to (M-1)do
                begin
                   outputfinsin[h]:= outputfinsin[h] + outputsfdsin[h+j]; //final output
                end;
             outputsfinsin[h]:= outputfinsin[h]/M;
             noisin[h]:=(input[h]-outputsfinsin[h]);
             chart4bsplineseries1.addxy(h,noisin[h]);      // filtered noise plot
             chart3bsplineseries1.addxy(h,outputsfinsin[h]); //final output plot
             chart5bsplineseries3.addxy(h,input[h]);    // input plot
        end;
end;

procedure TForm1.Button3Click(Sender: TObject);     //DFT OUTPUT
  begin
    chart7barseries1.Clear;
    if radiobutton1.Checked = true then
    begin;
      DFT(outputsfinsin,jmldata);
      magsinyal2:=magnitude;
      for i:=1 to(jmldata div 2) do
      begin
        chart7barseries1.addxy(i*(fs div jmldata),magsinyal2[i]);
      end;
    end else
    if radiobutton2.Checked = true then
    begin
      DFT(outputsfinsq,jmldata);
      magsinyal3:=magnitude;
      for i:=1 to(jmldata div 2) do
          begin
          chart7barseries1.addxy(i*(fs div jmldata),magsinyal3[i]);
          end;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);      //DFT NOISE
begin
   chart9barseries1.Clear;
    if radiobutton1.Checked = true then
    begin;
      DFT(noisin,jmldata);
      magsinyal4:=magnitude;
      for i:=1 to(jmldata div 2) do
      begin
        chart9barseries1.addxy(i*(fs div jmldata),magsinyal4[i]);
      end;
    end else
    if radiobutton2.Checked = true then
    begin
      DFT(noisq,jmldata);
      magsinyal5:=magnitude;
      for i:=1 to(jmldata div 2) do
          begin
          chart9barseries1.addxy(i*(fs div jmldata),magsinyal5[i]);
          end;
    end;
end;

procedure Tform1.magresp(ord: integer);              //MAGNITUDE RESPONSE MAV//
begin
  chart2bsplineseries1.clear;
  f:= 0.001;
  while f<= 0.5 do begin
    hf:=(sin(pi*f*ord)/(ord*sin(pi*f)));
    chart2bsplineseries1.addxy(f,sqrt(sqr(hf)));
    f:= f+0.001;
  end;
end;

                                           //  L F R  //

procedure TForm1.Button5Click(Sender: TObject);  // OPEN DATA
begin
  chart1bsplineseries1.Clear;
  chart1lineseries1.Clear;
  chart1lineseries2.Clear;
  chart5bsplineseries3.Clear;
  chart5bsplineseries2.Clear;
   if radiobutton16.Checked = true then
   begin
    if opendialog1.Execute then
    begin
    datainput(opendialog1.FileName);
    afl:= strtofloat(edit17.Text);
    ffl:= strtofloat(edit18.Text);
    for i:= 0 to (jmldatafl-1) do
        begin
           sinusfl[i]:= afl*sin(2*pi*ffl*i/fsfl);
           x1syn[i]:= x1[i] + sinusfl[i];
           chart1lineseries2.AddXY(i,(x1syn[i]));
           chart5bsplineseries2.AddXY(i,(x1syn[i]));
        end;
   end;
   end;
   if radiobutton17.Checked = true then
   begin
    if opendialog1.Execute then
    begin
    datainput(opendialog1.FileName);
      for aa:= 0 to (jmldatafl-1) do begin
      chart1lineseries2.AddXY(aa,x1[aa]);
      chart5bsplineseries2.AddXY(aa,(x1[aa]));
      end;
   end;
   end;
   labelededit1.Text:= inttostr(jmldatafl);
   labelededit2.Text:= floattostr(fsfl);
end;

procedure Tform1.datainput(nm_file:string);          //DATA INPUT PROCEDURE
var
  buang1: string;
  buang2: string;
  i: integer;
begin
  sl:= tstringlist.Create;
  i:=0;
  assignfile(filename,nm_file);
  reset(filename);
  readln(filename, buang1);
  sl.delimiter:= '(';
  readln(filename, buang2);
  sl.delimitedtext:= buang2;
  t:= (strtofloat(sl[1]));
  while not eof(filename) do
  begin
    readln(filename,sample[i],x1[i]);
    inc(i);
  end;
  jmldatafl:= i;
  fsfl:= 1/t;
end;


procedure TForm1.lfr(x: arraybaru);
var
  basis:arraymat;
  asigma,a,c,p:arraybaru;
  i,j,mlfr:integer;
  temp, jum:extended;
begin
  listbox1.items.clear;
  listbox2.items.clear;
  listbox4.items.clear;
  chart16lineseries1.Clear;
  chart3bsplineseries1.Clear;
  chart4bsplineseries1.Clear;
  chart5bsplineseries1.Clear;
  mlfr:=trackbar4.Position;
  label21.caption:='ORDE:'+inttostr(trackbar4.position);

 for i:= 0 to 99 do
  begin
    for j:= 0 to 99 do
    begin
    basis[i,j]:= 0;
  end;
    asigma[i]:= 0;
    c[i]:= 0;
    p[i]:= 0;
    outlfr[i]:= 0;
    noiselfr[i]:= 0;
  end;

  //matriks a
  for i:=1 to (mlfr+1)*2 do begin
    temp:=0;
    for j:=0 to jmldatafl-1 do begin
      temp:=temp+power(j,i);
    end;
    asigma[i]:=temp;
  end;
  asigma[0]:=jmldatafl;

  for i:=1 to (mlfr+1) do begin
    for j:=1 to (mlfr+1) do begin
      mat[i,j]:=asigma[i+j-2];
      listbox1.Items.add('A['+inttostr(i)+','+inttostr(j)+'] = '+floattostr(basis[i,j]));
    end;
  end;
  invers(mlfr);

  //matriks c
  temp:=0;
  jum:= 0;
  for i:=1 to mlfr+1 do
  begin
    for j:=0 to jmldatafl do
    begin
      jum:= temp + power(j,i-1)*x[j];
      temp:= jum;
      //c[i]:=c[i]+power(j,i-1)*x[j];
    end;
    c[i]:= jum;
    temp:=0;
    jum:=0;
    listbox2.items.add('C['+inttostr(i)+ '] = '+floattostr(c[i]));
  end;

  //multiply
  temp:=0;
  jum:=0;
  for i:=1 to mlfr+1 do
  begin
    for j:=1 to mlfr+1 do
    begin
      jum:= temp + b[i,j]*c[j] ;
      temp:= jum;
    end;
    a[i-1]:= jum;
    jum:= 0;
    temp:= 0;
    listbox4.Items.add('A['+inttostr(i)+'] = '+floattostr(a[i]));
  end;

  //find am
  temp:=a[0];
  for i:=0 to jmldatafl do begin
    for j:=1 to mlfr do begin
      jum:=temp+a[j]*power(i,j);
      temp:= jum;
    end;
    p[i]:=jum;
    temp:=a[0];
    chart16lineseries1.addXY(i,p[i]);
  end;
  for i:=1 to jmldatafl do begin
    outlfr[i]:=x[i]-p[i];
    chart5bsplineseries1.addXY(i,outlfr[i]);
    chart3bsplineseries1.addXY(i,outlfr[i]);
  end;

  //plot noise
  for i:=1 to jmldatafl-1 do
  begin
    noiselfr[i]:=x[i]-outlfr[i];
    chart4bsplineseries1.AddXY(i/fsfl,noiselfr[i]);
  end;
 { //dftoutput
  dft(outlfr,jmldatafl);
  magsinya2:=magnitude;
  for i:=0 to (fsfl div 2) do
  begin
    series5.AddXY(i*fsfl div jmldatafl,magsinyal2[i]);
  end;
  //dftnoise
  dft(noise,jmldatafl);
  magsinyal22:=magnitude;
  for i:=0 to (fsfl div 2) do
  begin
    series7.AddXY(i*fsfl div jmldatafl ,magsinyal22[i]);
  end;}
end;

procedure TForm1.invers(orde:integer);
var
  j: Integer;
  i,n,ll: Integer;
begin
for i := 1 to orde+1 do
begin
  for j := 1 to orde+1 do
  begin
    if i=j then
    begin
      b[i,j]:=1;
    end
    else
    begin
      b[i,j]:=0;
    end;
  end;
end;

  for j := 1 to orde+1 do
  begin
    for i := 1 to orde+1 do
    begin
      if mat[i,j]<>0 then
      begin
        t:=1/mat[j,j];  //app
        for n := 1 to orde+1 do
        begin
          mat[j,n]:=t*mat[j,n];
          b[j,n]:=t*b[j,n];
        end;
        for ll := 1 to orde+1 do
        begin
          if ll<>j then
          begin
            t:=-mat[ll,j];
            for n := 1 to orde+1 do
            begin
              mat[ll,n]:=mat[ll,n]+t*mat[j,n];
              b[ll,n]:=b[ll,n]+t*b[j,n];
            end;
          end;
        end;
      end;
      break;
    end;
  end;
end;


                                     //  F O U R I E R  T R A N S F O R M  //

procedure TForm1.filterfourier(q: integer);                      //PILIH FILTER
begin
  if radiobutton3.Checked= true then begin                  //LPF
    if q=0 then
    respimpulse[q]:=(omegac/pi) else
    respimpulse[q]:=(sin(omegac*q))/(q*pi);
    end;
  if radiobutton4.checked = true then begin                  //HPF
    if q=0 then
    respimpulse[q]:=((pi-omegac)/pi) else
      respimpulse[q]:=-(sin(omegac*q))/(q*pi);
    end;
  if radiobutton5.checked = true then begin                 //BPF
    if n=0 then
    respimpulse[q]:=((omegah-omegal)/pi) else
      respimpulse[q]:=(sin(omegah*q)-sin(omegal*q))/(q*pi);
  end;
  if radiobutton6.checked = true then begin                 //BPF
    if n=0 then
    respimpulse[q]:=((pi-omegah+omegal)/pi) else
      respimpulse[q]:=(sin(omegal*q)-sin(omegah*q))/(q*pi);
  end;
end;


procedure TForm1.TrackBar3Change(Sender: TObject);
begin
  if radiobutton1.Checked = true then
  begin
    FourierTransform(input);
  end else
  if radiobutton2.Checked = true then
  begin
    FourierTransform(sq);
  end;
end;

procedure Tform1.FourierTransform(inputsig: arraybaru);          //FOURIER TRANSFORM METHOD
begin
  chart6barseries1.Clear;
  chart7barseries1.Clear;
  chart9barseries1.Clear;
  chart8BarSeries1.clear;
  chart10lineseries1.Clear;
  chart11bsplineseries1.Clear;
  chart5bsplineseries1.Clear;
  chart5bsplineseries2.Clear;
  chart5bsplineseries3.Clear;
  chart3bsplineseries1.Clear;
  chart4bsplineseries1.Clear;

  Mft:= trackbar3.Position;
  Fcut:=strtoint(edit11.text);
  Fhigh:=strtoint(edit12.text);
  Flow:=strtoint(edit13.text);
  label19.Caption:='ORDE ='+ inttostr(Mft);
  ordeft:=(2*Mft) +1;
  label17.Caption:='TAP:'+ floattostr(ordeft);
  omegac:=2*pi*Fcut/fs;
  omegah:=2*pi*Fhigh/fs;
  omegal:=2*pi*Flow/fs;

  for n:= -Mft to Mft do
  begin
  filterfourier(n);
  chart8BarSeries1.AddXY(n,respimpulse[n]);
  end;

  for i:=-(jmldata) to (jmldata) do
  begin
   frekuensiidealft(i);
   chart10lineseries1.AddXY(i, freqideal[i]);
  end;

  responfilterft(respimpulse);

  for i:= 0 to (jmldata-1) do
   begin
   outft[-i]:= outft[0];
   outftf[-i]:= outft[0];
   outftb[-i]:= outft[0];
   outft[-i]:= outft[0];
   inputsig[-i]:= inputsig[0];
   outftf[jmldata+i]:= outft[jmldata-1];
   inputsig[jmldata+i]:= inputsig[jmldata-1];
   end;

  for h:=0 to (jmldata-1) do begin                           //FOURIER FORWARD
    for j:=0 to (2*Mft) do begin
         outftf[h]:= outftf[h]+((respimpulse[j-Mft])*(inputsig[h-j]));
    end;
    chart5bsplineSeries1.AddXY(h,outftf[h]);
  end;

  for n:=0 to (jmldata-1) do begin                           //FOURIER BACKWARD
    for i:=0 to (2*Mft) do begin
         outft[n]:=outft[n] + (outftf[n+i]*respimpulse[i-Mft]);
         outftb[n]:=outftb[n] + ((respimpulse[i-Mft])*(inputsig[n+i]));
    end;
    noift[n]:=outft[n]-inputsig[n];
    chart3bsplineseries1.AddXY(n,outft[n]);
    chart4bsplineSeries1.AddXY(n,noift[n]);
    chart5bsplineSeries2.AddXY(n,outftb[n]);
    chart5bsplineSeries3.AddXY(n,inputsig[n]);
  end;

  DFT(inputsig,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart6barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;
   DFT(outft,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart7barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;
   DFT(noift,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart9barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;

  for n:=0 to (jmldata-1) do begin
  outft[n]:=0;
  noift[n]:=0;
  outftf[n]:=0;
  outftb[n]:=0;
  end;
end;

procedure Tform1.frekuensiidealft(nn: integer);
begin
if radiobutton3.checked then begin
    if abs(nn)<= fcut then
    freqideal[nn]:=1 else
      freqideal[nn]:=0;
    end;
if radiobutton4.checked then begin
    if abs(nn)<= fcut then
   freqideal[nn]:=0 else
     freqideal[nn]:=1;
    end;
if radiobutton5.checked then begin
    if (abs(nn)<=fhigh) AND (abs(nn)>=flow) then
    freqideal[nn]:=1 else
     freqideal[nn]:=0;
  end;
  if radiobutton6.checked then begin
     if (abs(nn)<=fhigh) AND (abs(nn)>=flow) then
    freqideal[nn]:=0 else
      freqideal[nn]:=1;
end;
end;

procedure Tform1.responfilterft(hh: arraybaru);
begin
  for n:= -(jmldata div 2) to (jmldata div 2) do begin
  resfil[n]:=0;
  resfil[-n]:=0;
    for m:=0 to Mft do begin
     resfil[n] := resfil[n] + (hh[m]*cos(2*pi*m*n/(jmldata)));
    end;
  chart11bsplineseries1.AddXY(2*pi*n/jmldata,resfil[n]);
  end;
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
  if radiobutton16.Checked = true then
  begin
   lfr(x1syn);
  end;
  if radiobutton17.Checked = true then
  begin
   lfr(x1);
  end;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
   if radiobutton1.Checked = true then
  begin
    windowmethod(input);
  end else
  if radiobutton2.Checked = true then
  begin
    windowmethod(sq);
  end;
end;

procedure TForm1.filterwindow(q: integer);                      //PILIH FILTER WINDOW
begin
  if radiobutton12.Checked= true then begin                  //LPF
    if q=0 then
    respimpulsew[q]:=(omegacw/pi) else
    respimpulsew[q]:=(sin(omegacw*q))/(q*pi);
    end;
  if radiobutton13.checked = true then begin                  //HPF
    if q=0 then
    respimpulsew[q]:=((pi-omegacw)/pi) else
      respimpulsew[q]:=-(sin(omegacw*q))/(q*pi);
    end;
  if radiobutton14.checked = true then begin                 //BPF
    if n=0 then
    respimpulsew[q]:=((omegahw-omegalw)/pi) else
      respimpulsew[q]:=(sin(omegahw*q)-sin(omegalw*q))/(q*pi);
  end;
  if radiobutton15.checked = true then begin                 //BPF
    if n=0 then
    respimpulsew[q]:=((pi-omegahw+omegalw)/pi) else
      respimpulsew[q]:=(sin(omegalw*q)-sin(omegahw*q))/(q*pi);
  end;
end;

procedure Tform1.windowmethod(inputsig: arraybaru);     //WINDOW//
begin
  chart6barseries1.Clear;
  chart7barseries1.Clear;
  chart9barseries1.Clear;
  chart12BarSeries1.clear;
  chart13BarSeries1.clear;
  chart14lineseries1.Clear;
  chart15bsplineseries1.Clear;
  chart5bsplineseries1.Clear;
  chart5bsplineseries2.Clear;
  chart5bsplineseries3.Clear;
  chart3bsplineseries1.Clear;
  chart4bsplineseries1.Clear;

Mfw:=trackbar2.Position;
label22.Caption:='ORDE ='+ inttostr(Mfw);
Fcutw:=strtofloat(edit14.text);
Floww:=strtofloat(edit15.text);
Fhighw:=strtofloat(edit16.text);
ordew:=2*Mfw +1;
label23.Caption:='TAP: '+ floattostr(ordew);

omegacw:=2*pi*Fcutw/fs;
omegalw:=2*pi*Floww/fs;
omegahw:=2*pi*Fhighw/fs;

for i:=-(jmldata) to (jmldata) do      //FILTER IDEAL
  begin
   frekuensiidealwindow(i);
   chart14lineseries1.AddXY(i, freqidealw[i]);
  end;

for n:=(-Mfw) to Mfw do begin
filterwindow(n);
  if radiobutton7.checked then begin                      //RECTANGULAR
  window[n]:=1;
  end;
  if radiobutton8.checked then begin                      //BARTLETT
  window[n]:=1-(abs(n)/Mfw);
  end;
  if radiobutton9.checked then begin                      //HANNING
  window[n]:=0.5+(0.5*cos(n*pi/Mfw));
  end;
  if radiobutton10.checked then begin                      //HAMMING
  window[n]:=0.54+(0.46*cos(n*pi/Mfw));
  end;
  if radiobutton11.checked then begin
  window[n]:=0.42+(0.5*cos(n*pi/Mfw))+(0.08*cos(2*n*pi/Mfw));    //BLACKMAN
  end;
  hwindow[n]:=(respimpulsew[n]*window[n]);
  chart12BarSeries1.AddXY(n,window[n]);
  chart13BarSEries1.AddXY(n,hwindow[n]);
end;

for n:=-(jmldata div 2) to (jmldata div 2) do begin                                 //FILTER RESPON
   resfilw[n]:=0;
   resfilw[-n]:=0;
   for m:=0 to Mfw do begin
      resfilw[n] := resfilw[n] + (hwindow[m]*cos(2*pi*m*n/(jmldata)));
   end;
   chart15bsplineSeries1.AddXY(2*pi*n/jmldata,resfilw[n]);
end;

for i:= 0 to (jmldata-1) do
   begin
   outw[-i]:= outft[0];
   outwf[-i]:= outft[0];
   outwb[-i]:= outft[0];
   inputsig[-i]:= inputsig[0];
   outwf[jmldata+i]:= outft[jmldata-1];
   inputsig[jmldata+i]:= inputsig[jmldata-1];
   end;

for n:=0 to (jmldata-1) do begin                           //WINDOW FORWARD
    for i:=0 to (2*Mfw) do begin
    outwf[n]:= outwf[n]+((hwindow[i-Mfw])*(inputsig[n-i]));
    end;
    chart5bsplineSeries1.AddXY(n,outwf[n]);
end;

for n:=0 to (jmldata-1) do begin                           //WINDOW BACKWARD
    for i:=0 to (2*Mfw) do begin
    outw[n]:=outw[n] + (outwf[n+i]*hwindow[i-Mfw]);
    outwb[n]:=outwb[n] + ((hwindow[i-Mfw])*(inputsig[n+i]));
    end;
    noiw[n]:=inputsig[n]- outw[n];
    chart3bsplineseries1.AddXY(n,outw[n]);
    chart4bsplineSeries1.AddXY(n,noiw[n]);
    chart5bsplineSeries2.AddXY(n,outwb[n]);
    chart5bsplineSeries3.AddXY(n,inputsig[n]);
end;

  DFT(inputsig,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart6barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;
   DFT(outw,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart7barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;
   DFT(noiw,jmldata);
      for ii:=0 to(jmldata div 2) do
      begin
      chart9barseries1.addxy(ii*(fs div jmldata),magnitude[ii]);
      end;

for n:=0 to (jmldata-1) do begin
  outw[n]:=0;
  noiw[n]:=0;
  outwf[n]:=0;
  outwb[n]:=0;
  end;

end;

procedure Tform1.frekuensiidealwindow(nn: integer);
begin
if radiobutton12.checked then begin
    if abs(nn)<= fcutw then
    freqidealw[nn]:=1 else
      freqidealw[nn]:=0;
    end;
if radiobutton13.checked then begin
    if abs(nn)<= fcutw then
   freqidealw[nn]:=0 else
     freqidealw[nn]:=1;
    end;
if radiobutton14.checked then begin
    if (abs(nn)<=fhighw) AND (abs(nn)>=floww) then
    freqidealw[nn]:=1 else
     freqidealw[nn]:=0;
  end;
  if radiobutton15.checked then begin
     if (abs(nn)<=fhighw) AND (abs(nn)>=floww) then
    freqidealw[nn]:=0 else
      freqidealw[nn]:=1;
end;
end;


end.


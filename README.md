# Finite Impulse Response (FIR) Filter Analyzer

A Lazarus/Free Pascal GUI application implementing and visualizing four FIR digital filter design methods: Moving Average (MAV), Low Frequency Removal (LFR), Fourier Transform Design, and Window Method. Supports LPF, HPF, BPF, and BSF filter types with real-time frequency spectrum analysis.

---

## Background

This application was developed as a Digital Signal Processing (Pengolahan Sinyal Digital) assignment at the Department of Biomedical Engineering (S1 Teknik Biomedik), Faculty of Electrical Technology, Institut Teknologi Sepuluh Nopember (ITS) Surabaya, 2018.

FIR (Finite Impulse Response) filters are non-recursive digital filters whose output depends only on current and past input samples — not on past outputs. Unlike IIR filters, FIR filters have no feedback poles, guaranteeing unconditional stability. They also exhibit **linear phase response**, meaning all frequency components experience equal delay through the filter.

The general FIR difference equation is:

```
y[n] = Σ h[k] · x[n-k],   k = 0 to N-1
```

With Z-transform transfer function:

```
H(z) = Σ h[k] · z^(-k),   k = 0 to N-1
```

---

## Filter Methods

### 1. Moving Average Filter (MAV)

The simplest FIR filter. Computes the output as a running average of M input samples:

```
y[i] = (1/M) · Σ x[i-j],   j = 0 to M-1
```

A forward-backward (two-pass) approach is used to eliminate phase delay in the output. The frequency response follows a sinc-like shape:

```
H(f) = sin(π·f·M) / (M · sin(π·f))
```

MAV behaves as a lowpass filter and is computationally minimal. It performs well for smoothing white noise but cannot sharply separate frequency bands.

**Observed behavior:** Higher orders increase smoothing but introduce amplitude distortion at the signal boundaries due to the forward-backward computation.

### 2. Low Frequency Removal (LFR)

Designed to eliminate baseline wander — very low-frequency drift components common in biomedical signals such as ECG. LFR fits a polynomial trend curve to the signal using **least-squares regression** and subtracts it:

```
[A][B] = [C]
[B] = [A]^(-1) · [C]

p[n] = a₀ + a₁n + a₂n² + ... + aₘnᴹ
y[n] = x[n] - p[n]
```

The matrix `[A]` contains power sums of the sample index `t_i`; `[C]` contains weighted signal sums. Order M is the polynomial degree.

**Observed behavior:** Order selection requires trial and error. Higher orders accumulate numerical error in the matrix computation, causing output distortion. Effective order for ECG baseline wander was found to be 7–30 depending on the wander frequency.

### 3. Fourier Transform Design Method (FDM)

Designs FIR filters from ideal frequency specifications by computing the inverse Fourier transform of the desired response to obtain filter coefficients h[n], then applying forward-backward convolution.

Ideal impulse responses for each filter type:

| Filter | h[n] at n=0 | h[n] for n≠0 |
|--------|------------|--------------|
| LPF | Ωc/π | sin(Ωc·n) / (n·π) |
| HPF | (π−Ωc)/π | −sin(Ωc·n) / (n·π) |
| BPF | (ΩH−ΩL)/π | sin(ΩH·n)/(n·π) − sin(ΩL·n)/(n·π) |
| BSF | (π−ΩH+ΩL)/π | −sin(ΩH·n)/(n·π) + sin(ΩL·n)/(n·π) |

**Observed behavior:** Higher orders produce frequency responses closer to the ideal brick-wall shape. However, all filter types exhibit signal distortion at the tail of the sequence (approximately the last 80 samples in a 1000-sample signal) due to the forward-backward phase correction. Optimal order must be selected via trial and error.

### 4. Window Method

Addresses the tail-end distortion weakness of FDM by applying a window function to the ideal impulse response `h(n)`:

```
h_w[n] = h[n] · w[n]
```

Five window types are implemented:

| Window | Weight Equation |
|--------|----------------|
| Rectangular | `w[n] = 1` |
| Bartlett | `w[n] = 1 − (2|n − M/2|) / M` |
| Hanning | `w[n] = 0.5 − 0.5·cos(2πn/M)` |
| Hamming | `w[n] = 0.54 − 0.46·cos(2πn/M)` |
| Blackman | `w[n] = 0.42 − 0.5·cos(2πn/M) + 0.08·cos(4πn/M)` |

Rectangular windows offer the least distortion suppression. Hanning, Hamming, and Blackman windows have Gaussian-like impulse responses, producing smoother frequency roll-off and better stopband attenuation with comparable or slightly larger required orders.

**Observed behavior:** Compared to raw FDM, Window method reduces tail-end distortion. Order selection still requires trial and error per filter type and window choice.

---

## Features

- **Signal Generator**: configurable composite sinusoid input (up to 3 frequency components with individual amplitudes) plus additive Gaussian white noise (configurable mean and standard deviation)
- **External Signal Support**: load real ECG data (e.g., PhysioNet baseline wander recordings) via the LFR module
- **DFT Spectrum Analyzer**: frequency content displayed for input signal, filter output, and filtered noise
- **Forward-Backward Filtering**: zero-phase output for all filter types
- **Four Filter Modules** selectable via UI tabs: MAV, LFR, Fourier Transform, Window
- **Filter Type Selection** (for FDM and Window): LPF, HPF, BPF, BSF
- **Window Type Selection**: Rectangular, Bartlett, Hanning, Hamming, Blackman
- **Configurable Parameters**: filter order (M), cutoff frequency, frequency band bounds
- **Magnitude Response Plot**: normalized frequency vs. amplitude
- **Forward/Backward/Input Comparison Plot**: time-domain overlay of computation stages

---

## Prerequisites

| Requirement | Notes |
|---|---|
| [Lazarus IDE](https://www.lazarus-ide.org/) | Object Pascal / FPC |
| Free Pascal Compiler (FPC) | `{$mode objfpc}{$H+}` |
| TAChart component package | Ships with Lazarus by default |
| `math` unit | For `sin`, `cos`, `arctan2`, `sqrt`, `power` |

No external dependencies required.

---

## Usage

### Step 1 — Configure Input Signal

| Field | Description |
|---|---|
| A1, F1 | Amplitude and frequency of sinusoid 1 (Hz) |
| A2, F2 | Amplitude and frequency of sinusoid 2 (Hz) |
| A3, F3 | Amplitude and frequency of sinusoid 3 (Hz) |
| Mean | Gaussian white noise mean |
| StDev | Gaussian white noise standard deviation |
| DATA | Number of samples |
| Fs | Sample rate (Hz) |

Click **SET** to generate and plot the input signal.

### Step 2 — Select Filter Method

Choose a tab: **MAV**, **LFR**, **FOURIER TRANSFORM**, or **WINDOW**.

- For **MAV**: set filter order (ORDE)
- For **LFR**: select Data or Synthesis mode; optionally load external ECG via **LOAD DATA**
- For **Fourier Transform**: select filter type (LPF/HPF/BPF/BSF), set cutoff frequency/frequencies and order
- For **Window**: select filter type and window type, set cutoff frequency/frequencies and order

### Step 3 — Apply Filter

Click **TAP** (or the equivalent apply button) to run the filter and update all charts.

Observe the output signal, frequency spectrum, filtered noise, and forward-backward comparison plots.

---

## Project Structure

```
.
├── unit1.pas       # Main form: all four filter methods, DFT, signal generator
├── unit1.frm       # Lazarus form definition (linked via {$R *.frm})
├── *.ctpr          # Lazarus project file
├── *.ctps          # Lazarus project file
├── *.ppr           # Lazarus project file
├── project1.exe    # Application
└── README.md
```
---

## Empirically Observed Optimal Orders (LPF, fs=1000, fc=50 Hz)

These were determined via trial and error from the experiments documented in the original report. They are starting points, not guaranteed values — optimal order depends on the input signal characteristics.

| Method | Window | Order |
|--------|--------|-------|
| MAV | — | 7 |
| LFR (ECG baseline wander) | — | 7–30 |
| Fourier Transform | — | 16 |
| Window | Rectangular | 16 |
| Window | Bartlett | 22 |
| Window | Hanning | 35 |
| Window | Hamming | 35 |
| Window | Blackman | 38 |


## References

- Cooley, J. & Tukey, J. (1965). *An Algorithm for the Machine Calculation of Complex Fourier Series*. Mathematics of Computation, pp. 297–301.
- Lyons, R. G. (1997). *Understanding Digital Signal Processing*. Prentice Hall PTR.
- Smith, S. W. (1997). *The Scientist and Engineer's Guide to Digital Signal Processing*. http://www.dspguide.com

---

## Author

**Windy Deftia M**  
Created in: 2018

Biomedical Engineering  
Institut Teknologi Sepuluh Nopember (ITS)

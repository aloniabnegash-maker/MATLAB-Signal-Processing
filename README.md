# MATLAB Signal Processing: Generation, Manipulation & Audio Analysis

## Overview
This project demonstrates foundational signal processing techniques using MATLAB, including signal generation, manipulation operations, and audio noise analysis. Completed as part of CENG 3264 (Signal Processing).

## Project Goals
✓ Generate and visualize multiple signal types (sinusoidal, exponential, impulse, step, random)
✓ Implement signal manipulation: delay, addition, multiplication
✓ Load real audio files and apply Gaussian noise at target signal-to-noise ratio (SNR)
✓ Preserve speech intelligibility in noisy communication channels

## What's Included

### 1. Signal Generation (`src/signal_generation.m`)
Generates and plots five fundamental signal types:
- **Sinusoidal signals**: 64-sample cosine wave (f=1KHz, fs=8KHz)
- **Exponential signals**: Decaying sinusoid envelope
- **Impulse signals**: Unit impulse at defined locations
- **Step signals**: Unit step function with transitions
- **Random signals**: Gaussian and uniform distributions with histograms

### 2. Signal Manipulation (`src/signal_manipulation.m`)
Applies standard signal operations to multi-frequency sinusoids:
- **Delay**: Shifts signal by N samples with zero-padding
- **Addition**: Combines two lower-frequency signals
- **Multiplication**: Amplitude modulates signal with high-frequency carrier
- Visualizes all operations side-by-side for comparison

### 3. Audio Processing (`src/audio_processing.m`)
Loads real speech audio, generates Gaussian noise, and simulates noisy channels:
- Loads external .wav file (watchdog.wav)
- Generates Gaussian noise with mean=0, std=1
- **Scales noise to target 10 dB SNR** while preserving speech
- Mixes speech + noise to simulate real communication channel
- Applies bandpass elliptic filter (100-1400 Hz) for enhancement
- Computes and verifies final SNR

## Key Results
- **Original speech**: Fully intelligible ("The watchdog gave a morning growl")
- **At 10 dB SNR**: Noisy but still understandable (hiss audible underneath)
- **Filtered output**: Enhanced intelligibility via bandpass filtering

## Technical Concepts Demonstrated
- Discrete-time signal representation
- Frequency domain analysis (FFT)
- Signal manipulation in time domain
- Noise scaling and SNR calculation
- Filter design (elliptic bandpass)
- Audio file I/O and playback

## Lab Report
See `docs/Lab2_Report.pdf` for full documentation, analysis, and results.

## Author
Aloniab Negash | Computer Engineering, University of Houston-Clear Lake

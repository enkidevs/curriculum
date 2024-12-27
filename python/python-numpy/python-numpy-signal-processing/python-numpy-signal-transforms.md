---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [FFT](https://numpy.org/doc/stable/reference/routines.fft.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Signal Transforms

---

## Content

Transform signals between time and frequency domains:

```python
# Create a complex signal (mix of frequencies)
t = np.linspace(0, 1, 1000)  # 1 second at 1000 Hz
signal = (np.sin(2 * np.pi * 10 * t) +      # 10 Hz component
          0.5 * np.sin(2 * np.pi * 50 * t))  # 50 Hz component

# 1. Fourier Transform
# Convert to frequency domain
spectrum = np.fft.fft(signal)
frequencies = np.fft.fftfreq(len(signal), d=1/1000)  # Frequency axis

# Get positive frequencies only
pos_freq = frequencies[:len(frequencies)//2]
pos_spectrum = np.abs(spectrum[:len(frequencies)//2])
```

> 💡 FFT reveals frequency components hidden in the signal!

Spectrum analysis:

```python
# 2. Power Spectrum
power = pos_spectrum ** 2

# Find dominant frequencies
peaks = np.where((power[1:] > power[:-1]) & 
                 (power[1:] > power[2:]))[0] + 1
dominant_freqs = pos_freq[peaks]
print(f"Main frequencies: {dominant_freqs[:3]} Hz")

# 3. Inverse Transform
# Reconstruct signal from spectrum
reconstructed = np.fft.ifft(spectrum).real
error = np.mean((signal - reconstructed) ** 2)
print(f"Reconstruction error: {error:.2e}")
```

> 💡 Power spectrum shows the strength of each frequency!

---

## Practice

Calculate power spectrum:

```python
spectrum = np.fft.fft(signal)
power = np.???(spectrum) ??? ???
```

- `abs`
- `**`
- `2`
- `pow`
- `sqrt`
- `^`

---

## Revision

FFT converts signal from:

???

- Time domain to frequency domain
- Frequency domain to time domain
- Real to complex
- Complex to real

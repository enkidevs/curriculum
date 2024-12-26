---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Signal Analysis

---

## Content

Analyze signal characteristics:

```python
# Create a test signal (ECG-like)
t = np.linspace(0, 1, 1000)  # 1 second at 1000 Hz
signal = (np.sin(2 * np.pi * 1 * t) *      # Baseline
          np.exp(-((t - 0.5) ** 2) / 0.01)  # Gaussian pulse
         ) + 0.1 * np.random.randn(len(t))   # Noise

# 1. Basic Statistics
mean = np.mean(signal)
std = np.std(signal)
rms = np.sqrt(np.mean(signal**2))
snr = 20 * np.log10(rms / std)  # Signal-to-Noise Ratio in dB

print(f"RMS value: {rms:.3f}")
print(f"SNR: {snr:.1f} dB")
```

> 💡 SNR compares signal strength to noise level!

Advanced analysis:

```python
# 2. Peak Detection
# Find peaks above threshold with minimum separation
threshold = 0.5
min_distance = 50  # samples
peaks = []
for i in range(1, len(signal)-1):
    if (signal[i] > threshold and 
        signal[i] > signal[i-1] and 
        signal[i] > signal[i+1]):
        if not peaks or i - peaks[-1] >= min_distance:
            peaks.append(i)

# 3. Signal Quality Metrics
# Calculate signal energy in different frequency bands
spectrum = np.fft.fft(signal)
freqs = np.fft.fftfreq(len(signal), d=1/1000)
band_energy = {
    'low': np.sum(np.abs(spectrum[np.abs(freqs) < 10])**2),
    'mid': np.sum(np.abs(spectrum[(freqs >= 10) & (freqs < 50)])**2),
    'high': np.sum(np.abs(spectrum[np.abs(freqs) >= 50])**2)
}
```

> 💡 Frequency bands reveal signal composition!

---

## Practice

Calculate RMS value:

```python
rms = np.???(np.???(signal???2))
```

- `sqrt`
- `mean`
- `**`
- `average`
- `power`
- `^`

---

## Revision

Zero crossings occur when:

???

- Signal changes from positive to negative
- Signal reaches maximum value
- Signal equals its mean
- Signal equals zero

---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Signal Processing](https://numpy.org/doc/stable/reference/routines.fft.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Signal Basics

---

## Content

Work with time-series signals:

```python
# Create time points (1 second, sampled at 1000 Hz)
t = np.linspace(0, 1, 1000)  # 1000 points = 1000 Hz sampling rate

# Generate a complex signal
# Combine 10 Hz and 20 Hz sine waves with different amplitudes
signal = 1.5 * np.sin(2 * np.pi * 10 * t) + \
         0.5 * np.sin(2 * np.pi * 20 * t)

# Basic signal properties
print(f"Mean value: {signal.mean():.2f}")
print(f"Peak-to-peak: {signal.max() - signal.min():.2f}")
print(f"RMS value: {np.sqrt(np.mean(signal**2)):.2f}")
```

> 💡 Sampling rate determines the highest frequency you can measure!

Signal analysis:

```python
# Find zero crossings
zero_crossings = np.where(np.diff(signal > 0))[0]
crossing_times = t[zero_crossings]

# Find peaks above threshold
threshold = 1.0
peaks = np.where((signal > threshold) & 
                 (signal > np.roll(signal, 1)) & 
                 (signal > np.roll(signal, -1)))[0]
peak_times = t[peaks]
peak_values = signal[peaks]

# Calculate signal energy
energy = np.sum(signal**2) * (t[1] - t[0])  # Integrate power
```

> 💡 Zero crossings help determine frequency content!

---

## Practice

Create a time array with 1000 points from 0 to 10:

```python
t = np.???(???, ???, ???)
```

- `linspace`
- `0`
- `10`
- `1000`
- `arange`
- `100`

---

## Revision

A sine wave signal is created using:

???

- `np.sin(2 * np.pi * f * t)`
- `np.sine(f * t)`
- `np.wave(t, f)`
- `np.signal(t)`

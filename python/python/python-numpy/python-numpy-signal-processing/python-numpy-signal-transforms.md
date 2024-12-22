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

Transform signals between domains:

Fourier Transform:

```python
# Convert signal to frequency domain
spectrum = np.fft.fft(signal)
frequencies = np.fft.fftfreq(len(signal), d=1/100)  # 100 Hz sampling
```

> 💡 FFT shows frequency components of a signal!

Get magnitude:

```python
# Get power spectrum
magnitude = np.abs(spectrum)
power = magnitude ** 2
```

Find dominant frequency:

```python
# Get frequency with highest power
peak_freq = frequencies[np.argmax(magnitude)]
print(f"Main frequency: {peak_freq} Hz")
```

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

---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Signal Filtering](https://numpy.org/doc/stable/reference/routines.fft.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Signal Filtering

---

## Content

Filter and process signals:

```python
# Create a noisy signal (10 Hz sine + noise)
t = np.linspace(0, 1, 1000)  # 1 second at 1000 Hz
clean_signal = np.sin(2 * np.pi * 10 * t)
noise = np.random.normal(0, 0.2, len(t))
noisy_signal = clean_signal + noise

# 1. Moving Average Filter
window_size = 21  # Must be odd
weights = np.ones(window_size) / window_size
ma_filtered = np.convolve(noisy_signal, weights, mode='valid')

# Pad to maintain signal length
pad_size = window_size // 2
ma_filtered = np.pad(ma_filtered, (pad_size, pad_size), mode='edge')
```

> 💡 Larger window sizes give smoother results but more delay!

Advanced filtering:

```python
# 2. Exponential Moving Average
alpha = 0.1  # Smoothing factor (0-1)
ema = np.zeros_like(noisy_signal)
ema[0] = noisy_signal[0]
for i in range(1, len(noisy_signal)):
    ema[i] = alpha * noisy_signal[i] + (1 - alpha) * ema[i-1]

# 3. Median Filter (removes spikes)
window = 5
median_filtered = np.zeros_like(noisy_signal)
for i in range(window, len(noisy_signal) - window):
    median_filtered[i] = np.median(noisy_signal[i-window:i+window])

# 4. Threshold Filter (noise gate)
threshold = 0.1
gate_filtered = noisy_signal.copy()
gate_filtered[np.abs(gate_filtered) < threshold] = 0
```

> 💡 Different filters are best for different types of noise!

---

## Practice

Create a moving average filter:

```python
size = 3
weights = np.???(size) / ???
```

- `ones`
- `size`
- `zeros`
- `3`

---

## Revision

To remove values below a threshold:

```python
mask = signal < ???
signal[???] = 0
```

- `threshold`
- `mask`
- `0`
- `True`

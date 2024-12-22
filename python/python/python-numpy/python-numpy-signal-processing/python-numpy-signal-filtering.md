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

Filter and smooth signals:

Moving average:

```python
# Simple moving average filter
window_size = 5
weights = np.ones(window_size) / window_size
smoothed = np.convolve(signal, weights, mode='valid')
```

> 💡 Convolution is like a sliding window average!

Threshold filter:

```python
# Remove small values
threshold = 0.1
filtered = signal.copy()
filtered[np.abs(filtered) < threshold] = 0
```

Median filter:

```python
# Remove spikes (noise)
window = 3
filtered = np.zeros_like(signal)
for i in range(window, len(signal)-window):
    filtered[i] = np.median(signal[i-window:i+window])
```

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

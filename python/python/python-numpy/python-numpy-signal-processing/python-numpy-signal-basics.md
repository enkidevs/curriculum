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

Work with time-series data:

Create signal:

```python
# Time points
t = np.linspace(0, 1, 100)  # 100 points from 0 to 1

# Simple sine wave
signal = np.sin(2 * np.pi * 10 * t)  # 10 Hz sine
```

> 💡 Signals are just arrays of values over time!

Basic operations:

```python
print(signal.mean())  # Average value
print(signal.max())   # Peak value
print(signal.min())   # Trough value
```

Find peaks:

```python
peaks = np.where(signal > 0.5)[0]
print(f"Peaks at: {peaks}")
```

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

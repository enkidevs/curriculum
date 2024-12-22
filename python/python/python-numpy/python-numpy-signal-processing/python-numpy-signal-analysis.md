---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Signal Analysis](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
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

Analyze signal properties:

Basic statistics:

```python
# Signal properties
mean = signal.mean()
std = signal.std()
rms = np.sqrt(np.mean(signal**2))
```

> 💡 RMS (Root Mean Square) measures signal power!

Find crossings:

```python
# Zero crossing points
crossings = np.where(np.diff(signal > 0))[0]
print(f"Zero crossings at: {crossings}")
```

Correlation:

```python
# Compare two signals
signal1 = np.sin(2 * np.pi * 10 * t)
signal2 = np.sin(2 * np.pi * 10 * t + np.pi/4)
correlation = np.correlate(signal1, signal2, mode='full')
```

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

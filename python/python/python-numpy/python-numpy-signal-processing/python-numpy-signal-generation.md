---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Signal Generation](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Signal Generation

---

## Content

Generate different types of signals:

Sine wave:

```python
# Create 1 Hz sine wave
t = np.linspace(0, 1, 1000)  # 1 second
sine = np.sin(2 * np.pi * 1 * t)
```

> 💡 Frequency is controlled by the multiplier of t!

Square wave:

```python
# Create square wave
square = np.sign(sine)  # Convert sine to ±1
```

Add noise:

```python
# Add random noise
noise = np.random.normal(0, 0.1, len(t))
noisy = sine + noise
```

---

## Practice

Generate a 2 Hz sine wave:

```python
t = np.linspace(0, 1, 1000)
wave = np.sin(??? * np.pi * ??? * t)
```

- `2`
- `2`
- `1`
- `4`

---

## Revision

To add Gaussian noise with standard deviation 0.2:

```python
noise = np.random.???(???, ???, size)
```

- `normal`
- `0`
- `0.2`
- `gaussian`
- `rand`
- `1`

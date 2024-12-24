---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Mathematical Functions](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Functions

---

## Content

Apply scientific functions to data:

```python
# Sound intensity analysis
decibels = np.array([60, 70, 80, 90])
# Convert to intensity ratio (I/I₀)
intensity_ratio = 10 ** (decibels / 10)
# Convert back to decibels
db_check = 10 * np.log10(intensity_ratio)

# Population growth model
years = np.array([0, 1, 2, 3, 4, 5])
initial = 1000
rate = 0.1
population = initial * np.exp(rate * years)
```

> 💡 Exponential and log functions are inverses of each other!

Trigonometric analysis:

```python
# Analyze wave motion
time = np.linspace(0, 2*np.pi, 1000)
amplitude = 2
frequency = 2

# Generate wave components
wave = amplitude * np.sin(frequency * time)
phase_shift = np.cos(frequency * time)

# Find wave peaks
peaks = np.where(np.abs(wave) == amplitude)[0]
peak_times = time[peaks]
```

> 💡 Use linspace for smooth wave calculations!

---

## Practice

Calculate the natural log of values:

```python
x = np.array([1, 2.7, 7.4])
result = np.???(x)
```

- `log`
- `ln`
- `log10`
- `logarithm`

---

## Revision

For trigonometric functions, angles must be in:

???

- Radians
- Degrees
- Either
- Gradians

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

# Signal Generation

---

## Content

Generate various signal types:

```python
# Create time base (1 second at 1000 Hz)
t = np.linspace(0, 1, 1000)

# 1. Basic Waveforms
# Sine wave (440 Hz = musical note A4)
sine = np.sin(2 * np.pi * 440 * t)

# Square wave (100 Hz)
square = np.sign(np.sin(2 * np.pi * 100 * t))

# Triangle wave (5 Hz)
triangle = 2 * np.abs(t % 0.2 - 0.1) / 0.1 - 1

# Sawtooth wave (20 Hz)
sawtooth = 2 * (t % 0.05) / 0.05 - 1
```

> 💡 Musical notes are specific frequencies!

Complex signals:

```python
# 2. Composite Signals
# Chord (A major: A4 + C#4 + E4)
A4 = np.sin(2 * np.pi * 440 * t)   # A4 note
Cs4 = np.sin(2 * np.pi * 554.37 * t)  # C#4 note
E4 = np.sin(2 * np.pi * 659.25 * t)   # E4 note
chord = (A4 + Cs4 + E4) / 3  # Average to prevent clipping

# AM modulation (carrier = 1000 Hz, message = 10 Hz)
message = np.sin(2 * np.pi * 10 * t)
carrier = np.sin(2 * np.pi * 1000 * t)
am_signal = (1 + 0.5 * message) * carrier
```

> 💡 Combine signals to create complex waveforms!

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

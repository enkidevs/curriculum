---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Random Sampling](https://numpy.org/doc/stable/reference/random/index.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Random Numbers

---

## Content

Generate random data for scientific simulations:

```python
# Simulate experimental measurements
# Measure voltage with random noise
true_voltage = 5.0  # True value (V)
measurements = 1000  # Number of measurements
noise_std = 0.1     # Standard deviation of noise

# Generate measurements with Gaussian noise
voltages = np.random.normal(true_voltage, noise_std, measurements)
print(f"Mean voltage: {voltages.mean():.3f} V")
print(f"Std deviation: {voltages.std():.3f} V")
```

> 💡 Normal distribution is perfect for measurement noise!

Simulate physical processes:

```python
# Radioactive decay simulation
n_atoms = 10000          # Initial atoms
decay_probability = 0.1   # Probability per time step
time_steps = 50

# Simulate decay events
decays = np.random.binomial(n_atoms, decay_probability, time_steps)
remaining = n_atoms - np.cumsum(decays)

# Random particle motion (3D random walk)
n_particles = 100
steps = 1000
movements = np.random.choice([-1, 1], size=(n_particles, steps, 3))
positions = np.cumsum(movements, axis=1)
```

> 💡 Use seed for reproducible random results: np.random.seed(42)!

---

## Practice

Generate normal distribution:

```python
values = np.random.???(???, ???, 100)
```

- `normal`
- `0`
- `1`
- `gaussian`
- `std`
- `mean`

---

## Revision

For random sampling with replacement:

```python
samples = np.random.choice(data, size=10, 
                         replace=???)
```

- `True`
- `False`
- `1`
- `0`

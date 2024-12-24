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

# Scientific Computing Basics

---

## Content

Perform scientific calculations efficiently:

```python
# Physics: Calculate projectile motion
initial_velocity = np.array([10, 15, 20])  # m/s
angle = np.radians(45)                     # Convert to radians
g = 9.81                                   # Gravity (m/s²)

# Calculate maximum height
v_y = initial_velocity * np.sin(angle)     # Vertical component
max_height = (v_y ** 2) / (2 * g)
print(f"Max heights: {max_height} meters")

# Calculate range
v_x = initial_velocity * np.cos(angle)     # Horizontal component
time_of_flight = 2 * v_y / g               # Time to land
range_distance = v_x * time_of_flight
print(f"Ranges: {range_distance} meters")
```

> 💡 NumPy handles vectors and scalars seamlessly!

Common scientific operations:

```python
# Chemistry: Calculate molecular energy
temperatures = np.array([300, 350, 400])  # Kelvin
k = 1.380649e-23                         # Boltzmann constant
energy = 3/2 * k * temperatures          # Average molecular energy

# Engineering: Calculate electrical power
voltage = np.array([12, 24, 48])         # Volts
current = np.array([2, 1, 0.5])          # Amperes
power = voltage * current                 # Watts
resistance = voltage / current            # Ohms
```

> 💡 Always include units in your variable names or comments!

---

## Practice

Calculate kinetic energy (E = ½mv²):

```python
mass = 2  # kg
velocity = np.array([1, 2, 3])  # m/s
energy = ??? * mass * velocity???
```

- `0.5`
- `**2`
- `1/2`
- `^2`

---

## Revision

To find the magnitude of a vector:

???

- `np.sqrt(np.sum(v**2))`
- `np.abs(v)`
- `np.magnitude(v)`
- `v.length()`

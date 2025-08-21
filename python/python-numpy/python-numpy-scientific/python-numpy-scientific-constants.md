---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Mathematical Constants](https://numpy.org/doc/stable/reference/constants.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scientific Constants

---

## Content

Use mathematical and physical constants:

```python
# Circle geometry calculations
radii = np.array([1, 2, 3])  # meters
areas = np.pi * radii**2
circumferences = 2 * np.pi * radii

# Sphere calculations
volumes = (4/3) * np.pi * radii**3
surface_areas = 4 * np.pi * radii**2

print(f"Circle areas: {areas:.2f} m²")
print(f"Sphere volumes: {volumes:.2f} m³")
```

> 💡 NumPy's constants are high-precision floating-point values!

Natural exponential calculations:

```python
# Compound interest
principal = 1000
rates = np.array([0.05, 0.10, 0.15])
years = 5

# A = P * e^(rt)
amounts = principal * np.e ** (rates * years)
print(f"Investment growth: ${amounts:.2f}")

# Half-life decay
initial = 100
decay_constant = 0.1
time = np.array([0, 1, 2, 3, 4, 5])
remaining = initial * np.e ** (-decay_constant * time)
```

> 💡 Use np.e for natural exponential calculations!

---

## Practice

Calculate circle area:

```python
r = np.array([1, 2])
area = ??? * r???
```

- `np.pi`
- `**2`
- `pi`
- `^2`

---

## Revision

The mathematical constant e is accessed using:

???

- `np.e`
- `np.E`
- `np.exp(1)`
- `np.euler`

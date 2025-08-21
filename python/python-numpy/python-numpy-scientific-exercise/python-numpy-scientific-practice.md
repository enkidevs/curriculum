---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Physics Simulation Exercise!
    # You're analyzing projectile motion with air resistance.

    import numpy as np

    # Physical constants
    g = 9.81          # Gravity (m/s²)
    rho = 1.225       # Air density (kg/m³)
    Cd = 0.47        # Drag coefficient (sphere)
    m = 0.145        # Mass (kg, baseball)
    r = 0.037        # Radius (m, baseball)

    # Initial conditions
    v0 = np.array([30.0, 40.0, 35.0])  # Initial velocities (m/s)
    theta = np.radians(45)              # Launch angle

    # Your tasks:
    # 1. Calculate initial velocity components
    vx = ???  # Horizontal velocity
    vy = ???  # Vertical velocity

    # 2. Calculate time of flight (ignore air resistance)
    # t = 2 * v0y / g
    flight_time = ???

    # 3. Generate trajectory points (with air resistance)
    t = np.linspace(0, flight_time, 100)
    # Area and drag force
    A = np.pi * r**2
    k = 0.5 * rho * Cd * A

    # Position arrays
    x = ???  # x(t) = v0x * t - (k/m) * v0x * t^2
    y = ???  # y(t) = v0y * t - 0.5 * g * t^2 - (k/m) * v0y * t^2

    # 4. Find maximum height and range
    max_height = ???
    range_distance = ???

    # 5. Analyze landing positions with random wind effects
    n_trials = 1000
    wind_speed = np.random.normal(0, 2, n_trials)  # Random wind (mean=0, std=2 m/s)
    landing_positions = ???
---

# Physics Simulation

---

## Content

> 👩‍💻 Practice scientific computing with projectile motion!

This exercise covers all scientific computing concepts:

- Physical constants and equations
- Vector calculations
- Numerical integration
- Statistical analysis

Example calculations:

```python
# Basic projectile motion
t = np.linspace(0, 2, 100)
x = v0 * np.cos(theta) * t
y = v0 * np.sin(theta) * t - 0.5 * g * t**2

# Air resistance effects
v = np.sqrt(vx**2 + vy**2)
drag = k * v**2

# Statistical analysis
heights = np.random.normal(max_height, 0.1, 1000)
confidence = np.percentile(heights, [2.5, 97.5])
```

> 💡 Remember:
>
> - Use appropriate units
> - Consider air resistance
> - Account for uncertainty
> - Validate results

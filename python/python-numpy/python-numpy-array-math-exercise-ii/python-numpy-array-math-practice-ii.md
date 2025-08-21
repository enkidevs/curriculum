---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Advanced Weather Analysis Exercise!
    # You're analyzing complex meteorological patterns.

    import numpy as np

    # Set random seed for reproducible results
    np.random.seed(42)

    # Monthly temperature data for 3 cities over 4 months
    temps = np.array([
        [20.5, 22.1, 23.5, 25.7],  # City A
        [18.2, 19.8, 22.3, 23.1],  # City B
        [25.1, 26.8, 28.3, 29.5]   # City C
    ])

    # Wind data: speed (m/s) and direction (degrees)
    wind_speed = np.array([
        [5.2, 6.1, 4.8, 5.5],      # City A
        [7.3, 6.8, 7.1, 6.5],      # City B
        [4.2, 4.5, 4.1, 4.8]       # City C
    ])

    wind_direction = np.array([
        [45, 90, 135, 180],        # City A
        [225, 270, 315, 360],      # City B
        [30, 60, 90, 120]          # City C
    ])

    # Your tasks:

    # 1. Calculate monthly growth rates for temperatures
    temp_growth = np.???(np.???(np.???(temps))) - 1

    # 2. Convert wind directions to radians and calculate wind components
    wind_rad = np.???(wind_direction)
    wind_x = wind_speed * np.???(wind_rad)  # East component
    wind_y = wind_speed * np.???(wind_rad)  # North component

    # 3. Generate random precipitation forecasts (0-100mm) for next 5 days
    precip_forecast = np.random.???(0, 101, size=(3, 5))

    # 4. Calculate cumulative temperature change per city
    temp_diff = np.???(temps, axis=1)
    cumulative_change = np.???(temp_diff)

    # 5. Calculate the angle between wind vectors for consecutive days
    # Hint: Use arctan2 for the first city's wind components
    wind_angles = np.???(wind_y[0, 1:], wind_x[0, 1:])
    wind_angles_deg = np.???(wind_angles)
---

# Weather Analysis

---

## Content

> 👩‍💻 Practice array math by analyzing meteorological data!

This exercise covers all array math concepts:

- Basic math (temperature conversion)
- Trigonometry (wind components)
- Advanced math (statistics, logarithms)
- Random number generation
- Rounding operations

Example operations:

```python
# Basic math
celsius = (fahrenheit - 32) * 5/9

# Trigonometry
radians = np.deg2rad(degrees)
x_comp = np.cos(radians)
y_comp = np.sin(radians)

# Advanced math
mean = np.mean(data, axis=1)
std = np.std(data, axis=1)
log_values = np.log(data)

# Random data
samples = np.random.uniform(low, high, size)

# Rounding
rounded = np.round(values, decimals=1)
```

> 💡 Remember:
>
> - Convert degrees to radians for trig functions
> - Use axis=1 for operations across days
> - Use axis=0 for operations across cities
> - Set random seed for reproducible results

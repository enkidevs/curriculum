---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Weather Analysis Exercise!
    # You're analyzing meteorological data.
    
    import numpy as np
    
    # Set random seed for reproducible results
    np.random.seed(42)
    
    # Generate random temperature data (°F)
    temps_f = np.random.uniform(60, 90, size=(4, 5))  # 4 cities, 5 days
    
    # Wind direction in degrees (0° is East, 90° is North)
    wind_dir = np.array([
        [45, 60, 30, 90, 120],     # City A
        [180, 150, 165, 145, 170], # City B
        [270, 285, 265, 290, 280], # City C
        [330, 350, 15, 45, 30]     # City D
    ])
    
    # Your tasks:
    # 1. Convert temperatures to Celsius
    temps_c = ???  # (F - 32) * 5/9
    
    # 2. Calculate wind components
    # Convert degrees to radians first!
    wind_rad = np.???(wind_dir)
    wind_x = np.???(wind_rad)  # East component
    wind_y = np.???(wind_rad)  # North component
    
    # 3. Calculate statistics
    temp_mean = np.???(temps_c, axis=1)  # Average temp per city
    temp_std = np.???(temps_c, axis=1)   # Temperature variation
    
    # 4. Find extreme temperatures
    hottest = np.???(temps_c)
    coldest = np.???(temps_c)
    
    # 5. Round all results to 1 decimal place
    rounded_temps = np.???(temps_c, decimals=1)

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

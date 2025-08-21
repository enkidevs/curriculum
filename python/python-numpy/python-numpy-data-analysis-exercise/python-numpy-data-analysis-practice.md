---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Weather Station Analysis Exercise!
    # You're analyzing climate data from multiple stations.

    import numpy as np

    # Weather station data (stations × days × measurements)
    # Measurements: temperature, humidity, pressure
    data = np.array([
        # Station 1
        [[25.2, 60, 1013.2],  # Day 1
         [24.8, 65, 1012.9],  # Day 2
         [np.nan, 63, 1013.1], # Day 3 (missing temp)
         [26.1, 58, 1014.2],  # Day 4
         [23.9, 71, 1011.8]], # Day 5
        # Station 2
        [[22.1, 68, 1012.5],  # Day 1
         [np.nan, 72, 1011.9], # Day 2 (missing temp)
         [24.3, 65, 1013.4],  # Day 3
         [25.2, 62, 1014.1],  # Day 4
         [23.8, 70, 1012.2]]  # Day 5
    ])

    # Your tasks:
    # 1. Clean missing temperature data (use station averages)
    temps = data[:, :, 0]  # All temperature readings
    clean_temps = ???

    # 2. Calculate daily temperature ranges
    daily_range = ???

    # 3. Group data by humidity levels (low < 65, high >= 65)
    humidity = data[:, :, 1]
    low_humidity_mask = ???
    high_humidity_mask = ???

    # 4. Find average pressure for each humidity group
    pressure = data[:, :, 2]
    low_pressure_avg = ???
    high_pressure_avg = ???

    # 5. Prepare data for visualization (normalize to 0-1 range)
    normalized = ???
---

# Weather Station Analysis

---

## Content

> 👩‍💻 Practice data analysis with real weather station data!

This exercise covers all data analysis concepts:

- Data cleaning (missing values)
- Data aggregation (statistics)
- Data grouping (conditions)
- Data preparation (normalization)

Example operations:

```python
# Clean missing values
station_means = np.nanmean(data, axis=1)  # Mean per station
clean = np.nan_to_num(data, nan=station_means)

# Calculate statistics
daily_stats = np.array([
    data.mean(axis=1),    # Daily means
    data.std(axis=1),     # Daily std dev
    data.max(axis=1)      # Daily max
])

# Group by condition
mask = data > threshold
group_means = data[mask].mean()

# Prepare for visualization
normalized = (data - data.min()) / (data.max() - data.min())
```

> 💡 Remember:
>
> - Handle missing values first
> - Use appropriate axis for aggregations
> - Create masks for grouping
> - Normalize before visualizing

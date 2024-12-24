---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Sensor Data Logger Exercise!
    # You're building an environmental monitoring system.

    import numpy as np

    # Define sensor data structure
    sensor_dt = np.dtype([
        ('timestamp', 'M8[s]'),     # Timestamp (seconds)
        ('location', 'U10'),        # Location name (10 chars)
        ('temp_c', 'f4'),          # Temperature in Celsius
        ('humidity', 'u1'),        # Humidity (0-100%)
        ('is_active', '?')         # Sensor status
    ])

    # Your tasks:
    # 1. Create sensor readings array
    readings = np.array([
        ('2024-01-15 09:00', 'Room1', 22.5, 45, True),
        ('2024-01-15 09:00', 'Room2', ???, ???, ???),
        ('2024-01-15 09:00', 'Room3', ???, ???, ???)
    ], dtype=???)

    # 2. Convert temperatures to Fahrenheit (°F = °C * 9/5 + 32)
    temps_f = ???

    # 3. Check memory usage
    bytes_per_record = readings.???
    total_bytes = readings.???

    # 4. Validate data types
    is_valid_humidity = readings['humidity'].dtype.??? == '???'
    max_humidity = np.???(readings['humidity'].dtype).???

    # 5. Filter active sensors
    active_sensors = readings[???]
---

# Sensor Data Logger

---

## Content

> 👩‍💻 Practice data types by building an environmental monitoring system!

This exercise covers all data type concepts:

- Structured arrays (sensor readings)
- Type conversion (temperature units)
- Memory efficiency (byte calculations)
- Type checking (data validation)
- Custom dtypes (data structure)

Example operations:

```python
# Create structured array
dt = np.dtype([('name', 'U10'), ('value', 'f4')])
data = np.array([('Sensor1', 23.4)], dtype=dt)

# Convert types
fahrenheit = (celsius * 9/5) + 32

# Check memory
bytes_used = data.nbytes
per_record = data.itemsize

# Validate types
is_float = data['value'].dtype.kind == 'f'
max_val = np.finfo(data['value'].dtype).max

# Access fields
sensor_name = data['name']
readings = data['value']
```

> 💡 Remember:
>
> - Choose efficient types for your data ranges
> - Convert types safely to avoid data loss
> - Check memory usage for large datasets
> - Validate data types before operations

---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're building a sensor data logger!
    # Tasks:
    # - Create a structured array for sensor readings
    # - Use efficient types to save memory
    # - Convert temperature units (C to F)
    # - Check data types and ranges

    # Type your code here:
    import numpy as np

    # Sample sensor data structure
    sensor_dtype = np.dtype([
        ('timestamp', 'U8'),      # Time as string (HH:MM:SS)
        ('temp_c', 'f4'),         # Temperature in Celsius
        ('humidity', 'u1'),       # Humidity percentage (0-100)
        ('status', 'i1')          # Status code (-128 to 127)
    ])

    # Your sensor logging code:
---

# Sensor Data Logger

---

## Content

> 👩‍💻 Your task is to build a data logger for environmental sensors!

To solve this, try using:

- Custom dtypes for structured data
- Memory-efficient types for readings
- Type conversion for temperature
- Type checking for validation

Give it a try, and feel free to experiment!

> 💡 Remember to choose appropriate data types for your values!

If you're stuck, try breaking it down:

1. Define your data structure
2. Create sample readings
3. Convert temperatures
4. Validate data types

---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're analyzing heart rate data!
    # Tasks:
    # - Filter out noise from the signal
    # - Find the average heart rate
    # - Detect irregular beats
    # - Analyze heart rate variability

    # Type your code here:
    import numpy as np

    # Generate 10 seconds of simulated heart rate data (60 BPM + noise)
    t = np.linspace(0, 10, 1000)  # 10 seconds, 100 Hz sampling
    heart_rate = np.sin(2 * np.pi * 1 * t)  # Base 60 BPM signal
    noise = np.random.normal(0, 0.1, len(t))
    signal = heart_rate + noise

    # Your analysis code:
---

# Heart Rate Analysis

---

## Content

> 👩‍💻 Your task is to analyze heart rate data using signal processing!

To solve this, try using:

- Filtering to remove noise
- Peak detection for heart beats
- Statistical analysis for variability
- Frequency analysis for patterns

Give it a try, and feel free to experiment!

> 💡 Remember that heart rate data is periodic but can contain irregularities!

If you're stuck, try breaking it down:

1. Clean the signal
2. Find peaks (beats)
3. Calculate statistics
4. Analyze variations

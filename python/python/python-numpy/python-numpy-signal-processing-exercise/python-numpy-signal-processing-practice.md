---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Heart Rate Analysis Exercise!
    # You're processing ECG signals to extract vital information.

    import numpy as np

    # Create simulated ECG data (10 seconds at 1000 Hz)
    t = np.linspace(0, 10, 10000)

    # Generate clean ECG-like signal (70 BPM)
    period = 60/70  # Time between beats
    pulse_positions = np.arange(0, 10, period)
    ecg = np.zeros_like(t)

    # Add QRS complexes
    for pos in pulse_positions:
        # Create characteristic ECG shape
        pulse = 1.2 * np.exp(-((t - pos) ** 2) / 0.001)  # R peak
        pulse -= 0.3 * np.exp(-((t - pos + 0.05) ** 2) / 0.004)  # Q wave
        pulse += 0.2 * np.exp(-((t - pos - 0.05) ** 2) / 0.004)  # S wave
        ecg += pulse

    # Add noise and artifacts
    noise = 0.1 * np.random.randn(len(t))  # Gaussian noise
    baseline = 0.2 * np.sin(2 * np.pi * 0.5 * t)  # Baseline wander
    signal = ecg + noise + baseline

    # Your tasks:
    # 1. Signal Filtering
    # Remove baseline wander and noise
    filtered = ???  # Hint: Use moving average or bandpass filter

    # 2. Peak Detection
    # Find R peaks (heart beats)
    peaks = ???  # Find peaks above threshold with minimum distance

    # 3. Heart Rate Analysis
    # Calculate instantaneous heart rate from peak intervals
    heart_rates = ???  # Convert peak intervals to BPM

    # 4. Variability Analysis
    # Calculate heart rate variability metrics
    hrv_metrics = {
        'mean_hr': ???,  # Mean heart rate
        'std_hr': ???,   # Standard deviation
        'rmssd': ???     # Root mean square of successive differences
    }

    # 5. Frequency Analysis
    # Analyze frequency components
    spectrum = ???  # FFT of filtered signal
    frequencies = ???  # Frequency axis
    power = ???  # Power spectrum
---

# ECG Signal Analysis

---

## Content

> 👩‍💻 Practice signal processing with heart rate data!

This exercise covers all signal processing concepts:

- Signal filtering (noise removal)
- Peak detection (R waves)
- Time domain analysis (heart rate)
- Frequency analysis (spectrum)

Example operations:

```python
# Filter signal
def bandpass_filter(signal, lowcut, highcut, fs):
    nyquist = fs/2
    low = lowcut/nyquist
    high = highcut/nyquist
    b, a = np.zeros(100), np.zeros(100)  # Filter coefficients
    filtered = np.zeros_like(signal)
    for i in range(len(signal)-len(b)):
        filtered[i] = np.sum(signal[i:i+len(b)] * b) - \
                     np.sum(filtered[max(0,i-len(a)):i] * a[1:i+1])
    return filtered

# Find peaks
def find_peaks(signal, threshold, min_distance):
    peaks = []
    for i in range(1, len(signal)-1):
        if (signal[i] > threshold and 
            signal[i] > signal[i-1] and 
            signal[i] > signal[i+1]):
            if not peaks or i - peaks[-1] >= min_distance:
                peaks.append(i)
    return np.array(peaks)
```

> 💡 Remember:
>
> - Filter out noise first
> - Use appropriate thresholds
> - Consider physiological limits
> - Validate your results

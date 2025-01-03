---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to user activity analysis!
    import pandas as pd

    # User session data
    sessions = pd.DataFrame({
        'user_id': ['A1', 'A2', 'A1', 'A3', 'A2', 'A3'],
        'login_time': [
            '2024-01-15 09:30:00',
            '2024-01-15 10:15:00',
            '2024-01-16 14:20:00',
            '2024-01-16 15:45:00',
            '2024-01-17 11:30:00',
            '2024-01-17 16:00:00'
        ],
        'duration_mins': [45, 30, 60, 25, 40, 35]
    })

    # Convert login_time to datetime
    sessions['login_time'] = pd.to_datetime(sessions['login_time'])

    # 1. Add columns for hour and day of week
    time_analysis = # Your code here

    # 2. Calculate total daily session time per user
    daily_usage = # Your code here

    # 3. Find sessions during work hours (9 AM - 5 PM)
    work_sessions = # Your code here

    # 4. Resample to get hourly session counts
    hourly_activity = # Your code here

---

# User Activity Analysis

---
## Content

> 👩‍💻 Help analyze user activity patterns to optimize system resources!

Your tasks:
1. Extract time components for pattern analysis
2. Calculate daily usage metrics per user
3. Filter sessions during business hours
4. Create hourly activity summary

> 💡 Use datetime components, operations, and resampling 
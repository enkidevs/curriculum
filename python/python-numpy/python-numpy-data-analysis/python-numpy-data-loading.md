---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Loading](https://numpy.org/doc/stable/reference/routines.io.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Loading

---

## Content

Load real-world data into NumPy arrays:

```python
# Load sales data from CSV
sales_data = np.loadtxt('sales.csv', 
    delimiter=',',          # CSV format
    skiprows=1,            # Skip header row
    usecols=(1,2,3),       # Select specific columns
    dtype=float)           # Ensure numeric data
print(sales_data.shape)    # e.g., (1000, 3)
```

> 💡 Use `skiprows` to handle header rows and comments!

Load structured data:

```python
# Load customer records with mixed types
customers = np.genfromtxt('customers.csv',
    delimiter=',',
    names=True,            # Use first row as field names
    dtype=[('id', 'i4'),   # Integer ID
           ('name', 'U20'), # String (20 chars)
           ('balance', 'f8')]) # Float balance
print(customers['balance'].mean())  # Average balance
```

Save and load efficiently:

```python
# Save processed data for faster loading
# Binary format is much faster than CSV
np.save('processed_data.npy', sales_data)

# Load binary data
loaded = np.load('processed_data.npy')

# Save multiple arrays in one file
np.savez('dataset.npz',
    sales=sales_data,
    customers=customers)

# Load multiple arrays
data = np.load('dataset.npz')
sales = data['sales']
customers = data['customers']
```

> 💡 Use .npy for single arrays, .npz for multiple arrays!

---

## Practice

Load a CSV file with headers:

```python
data = np.???(
    'file.csv',
    ???=',',
    ???=True
)
```

- `genfromtxt`
- `delimiter`
- `names`
- `loadtxt`
- `sep`
- `headers`

---

## Revision

To save an array to a binary file:

???

- `np.save('file.npy', arr)`
- `np.savetxt('file.npy', arr)`
- `arr.save('file.npy')`
- `np.write('file.npy', arr)`

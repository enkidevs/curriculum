---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Matrix Operations Exercise!

    import numpy as np

    # 1. Creating Matrices
    # Create a 3x3 matrix A
    A = np.array([[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]])

    # Create special matrices
    identity = ??? # 3x3 identity matrix
    zeros = ???    # 2x3 zero matrix
    ones = ???     # 3x2 ones matrix

    # 2. Matrix Properties
    print(f"Shape: {A.shape}")       # Matrix dimensions
    print(f"Size: {A.size}")         # Total number of elements
    print(f"Dimensions: {A.ndim}")   # Number of dimensions

    # 3. Matrix Indexing
    element = ???    # Get element at row 1, column 2
    first_row = ???  # Get first row
    second_col = ??? # Get second column
    submatrix = ???  # Get submatrix

    # 4. Basic Matrix Operations
    B = np.array([[9, 8, 7],
                [6, 5, 4],
                [3, 2, 1]])

    sum_matrix = ???   # Matrix addition
    diff_matrix = ???  # Matrix subtraction
    element_prod = ??? # Element-wise multiplication
    matrix_prod = ???  # Matrix multiplication
---

# Circuit Analysis

---

## Content

> 👩‍💻 Practice matrix operations by solving these matrix challenges!

To solve this, try using:

- `np.eye()` for identity matrices
- `np.zeros()` and `np.ones()` for special matrices 
- Array indexing for accessing elements and submatrices
- Basic operations like +, -, * for matrix arithmetic
- `np.dot()` for matrix multiplication

Give it a try, and feel free to experiment!

> 💡 Hint: Pay attention to matrix dimensions when performing operations!

If you're stuck, try breaking down complex operations into simpler steps and print intermediate results to check your work.
---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Linear System Solver Exercise!
    # You're analyzing a network of electrical circuits.
    
    import numpy as np
    
    # Circuit parameters (resistances in ohms)
    R = np.array([
        [10, 20, 30],  # Circuit 1
        [15, 25, 35],  # Circuit 2
        [5, 15, 25]    # Circuit 3
    ])
    
    # Voltage sources (volts)
    V = np.array([12, 9, 6])
    
    # Your tasks:
    # 1. Matrix Analysis
    # Calculate inverse and condition number of R
    R_inv = ???  # Hint: Use np.linalg.inv
    cond = ???   # Check matrix stability
    
    # 2. Current Calculation
    # Solve for currents (I = R^(-1) @ V)
    currents = ???
    
    # 3. Power Analysis
    # Calculate power dissipation (P = I^2 * R)
    power = ???
    
    # 4. Circuit Stability
    # Find eigenvalues to assess stability
    eigenvals = ???
    
    # 5. Optimization
    # Find resistance values that minimize power loss
    # while maintaining required currents
    optimal_R = ???

---

# Circuit Analysis

---

## Content

> 👩‍💻 Practice matrix operations with electrical circuits!

This exercise covers all matrix operation concepts:

- Matrix inversion and condition numbers
- Solving linear systems
- Eigenvalue analysis
- Matrix optimization

Example operations:

```python
# Check if matrix is well-conditioned
def is_well_conditioned(matrix, threshold=1000):
    cond = np.linalg.cond(matrix)
    return cond < threshold, cond

# Solve circuit equations
def solve_circuit(R, V):
    # Check conditioning
    is_stable, cond = is_well_conditioned(R)
    if not is_stable:
        print(f"Warning: Circuit may be unstable (condition={cond:.1f})")
    
    # Solve for currents
    try:
        I = np.linalg.solve(R, V)
        return I
    except np.linalg.LinAlgError:
        print("Error: Circuit equations cannot be solved")
        return None
```

> 💡 Remember:
>
> - Check matrix condition before solving
> - Use appropriate solving method
> - Verify physical constraints
> - Consider numerical stability
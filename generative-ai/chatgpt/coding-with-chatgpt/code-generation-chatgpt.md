---
author: Stefan-Stojanovic
type: normal
category: discussion
 

---

# Generating Code

---

## Content

---

Let's explore how ChatGPT can be a valuable asset for generating code snippets in programming. 

You can use it to learn syntax and structure more efficiently, as well as save time during the development process.

By formulating clear and concise prompts, you can leverage ChatGPT's knowledge to generate code, ultimately enhancing your understanding of programming concepts.

Let's say you need to create a factorial of a given number. We can ask the ai to do that for us:

![factorial-of-a-number](https://img.enkipro.com/a9ac191fcba73460d556cba45e2eff8e.png)

If you do not understand how the code works, you can always ask it to explain it:

![elaborate-on-the-factorial-code](https://img.enkipro.com/45799050359a699ee1750f59d3dbc54f.png)

We can also generate larger code blocks. It is important to structure the prompt carefully to get the desired output:

![larger-snippet](https://img.enkipro.com/529b112deb8a13addd47e5ac5bc135da.png)

You can find the full code snippet here[1].

Keep in mind, although the ai is great at generating code snippets, it won't be great at generating a full app, or very large code blocks due to its limitations.

However, you could create a larger working app if you generate code, piece by piece.


---

## Footnotes

[1: Full code example]

Prompt:

```plain-text
Create a Python program that performs CRUD (Create, Read, Update, Delete) operations on a list of employee records, where each record contains an employee ID, name, position, and salary. The program should display a menu allowing the user to add, view, edit, or delete employee records, as well as exit the program.
```

Code output:

```python
# Define an empty list to hold the employee records
employees = []

# Define a function to display the menu and get the user's choice
def menu():
  print("Employee Records Menu:")
  print("1. Add a new employee record")
  print("2. View all employee records")
  print("3. Update an employee record")
  print("4. Delete an employee record")
  print("5. Exit the program")
  choice = input("Enter your choice (1-5): ")
  return choice

# Define a function to add a new employee record
def add_employee():
  id = input("Enter employee ID: ")
  name = input("Enter employee name: ")
  position = input("Enter employee position: ")
  salary = input("Enter employee salary: ")
  employees.append({'id': id, 'name': name, 'position': position, 'salary': salary})
  print("Employee record added successfully.")

# Define a function to view all employee records
def view_employees():
  for employee in employees:
    print(f"ID: {employee['id']}, Name: {employee['name']}, Position: {employee['position']}, Salary: {employee['salary']}")

# Define a function to update an employee record
def update_employee():
  id = input("Enter employee ID to update: ")
  for employee in employees:
    if employee['id'] == id:
      employee['name'] = input("Enter employee name: ")
      employee['position'] = input("Enter employee position: ")
      employee['salary'] = input("Enter employee salary: ")
      print("Employee record updated successfully.")
      return
  print("Employee record not found.")

# Define a function to delete an employee record
def delete_employee():
  id = input("Enter employee ID to delete: ")
  for employee in employees:
    if employee['id'] == id:
      employees.remove(employee)
      print("Employee record deleted successfully.")
      return
  print("Employee record not found.")

# Main program loop
while True:
  choice = menu()
  if choice == '1':
    add_employee()
  elif choice == '2':
    view_employees()
  elif choice == '3':
    update_employee()
  elif choice == '4':
    delete_employee()
  elif choice == '5':
    print("Exiting program.")
    break
  else:
    print("Invalid choice. Please try again.")
```

When we run the code and add data:

![code-run](https://img.enkipro.com/bad06010d318f85ddbbcacebfecfcf8f.png)
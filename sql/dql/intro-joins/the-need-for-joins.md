---
author: meridian

type: normal

category: must-know

tags:
  - introduction
  - joins

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# The Need for Joins

---

## Content

When designing a relational database with scalability[1] in mind, it becomes important to minimise the repetition of data[2]. This is because as the database scales so does the memory requirement and so you'd like to minimise repeated data to free up more space.
Let's take, for example, a database that stores employee information for a university. Realistically, this database would not contain millions of entries, but the concepts remain the same.
For each employee, you want to store the name and email address and then department data such as the name of the department, head of department and the department phone number. In theory, it is possible to store this data as follows:

| employee_number | employee_name   | employee_email     | dept_name    | dept_head      | dept_telno |
|-----------------|-----------------|--------------------|--------------|----------------|------------|
| 100912          | Lazar, Marian   | m.lazar@uni.edec   | Physics      | Millward, Fred | 259(9985)  |
| 100913          | Leitz, Basilio  | b.leitz@uni.edec   | Anthropology | Akers, Kyros   | 259(9898)  |
| 100914          | Neil, Geraldine | g.neil@uni.edec    | Physics      | Millward, Fred | 259(9985)  |
| 100915          | Bellomo, Amar   | a.bellomo@uni.edec | Biology      | Delaney, Nadia | 259(1099)  |
| 100916          | Hardy, Kira     | k.hardy@uni.edec   | Anthropology | Akers, Kyros   | 259(9898)  |

However, you can see that for every employee entry that has the same department as another entry, there will be repeated info as is the case here for `Physics` and `Anthropology`. If this is repeated over many many entries, we will end up wasting a lot of storage space. Additionally, if we wanted to update the `dept_head` name for a certain department, we would have to do this over all the repeated entries in the table, this would severely impact the performance of our database.

In order to avoid this, we can split this table into two *related* tables. Let's call these tables the `employees` and `departments` tables and arrange them as follows

`employees`:

| employee_number | employee_name   | employee_email     | department   |
|-----------------|-----------------|--------------------|--------------|
| 100912          | Lazar, Marian   | m.lazar@uni.edec   | physics      |
| 100913          | Leitz, Basilio  | b.leitz@uni.edec   | anthropology |
| 100914          | Neil, Geraldine | g.neil@uni.edec    | physics      |
| 100915          | Bellomo, Amar   | a.bellomo@uni.edec | biology      |
| 100916          | Hardy, Kira     | k.hardy@uni.edec   | anthropology |

`departments`:

| dept_name    | dept_head      | dept_telno |
|--------------|----------------|------------|
| physics      | Millward, Fred | 259(9985)  |
| biology      | Delaney, Nadia | 259(1099)  |
| anthropology | Akers, Kyros   | 259(9898)  |
| chemistry    | Dodd, Antonia  | 259(6482)  |
| geography    | Smith, Henry   | 259(7841)  |

By organising our data into two tables, you can see that we drastically reduce the amount of repetition and, therefore, improve performance[3].

What happens now when we want to combine the two tables with a query so that we get a view like that in the original, large table? Keep going to the next insight to find out!

---

## Practice

What is usually best practice in relational databases?

**A**. Fewer tables with duplicate data
**B**. More tables with less duplicate data
**C**. More tables with duplicate data

???

- B 
- A
- C

---

## Revision

Consider the first few rows of tables from the `pokedex` database containing pokemon information. Decide which represents the **usual** best-practice option for relational databases.

**Option 1**

| pokemon_name | pokemon_health | pokemon_type | type_strengths      | type_weakness       |
|--------------|----------------|--------------|---------------------|---------------------|
| charmeleon   | 35             | fire         | steel, grass, ice   | ground, rock, water |
| bulbasaur    | 36             | grass        | ground, rock, water | poison, fire, ice   |
| squirtle     | 38             | water        | ground, rock, fire  | grass, electric     |
| magikarp     | 30             | water        | ground, rock, fire  | grass, electric     |


**Option 2**

| pokemon_name | pokemon_health | pokemon_type |
|--------------|----------------|--------------|
| charmeleon   | 35             | fire         |
| bulbasaur    | 36             | grass        |
| squirtle     | 38             | water        |
| magikarp     | 30             | water        |

| type  | type_strengths      | type_weakness       |
|-------|---------------------|---------------------|
| fire  | steel, grass, ice   | ground, rock, water |
| grass | ground, rock, water | poison, fire, ice   |
| water | ground, rock, fire  | grass, electric     |

???

- Option 2 
- Option 1

---

## Footnotes
[1:Scalability]
Database scalability is the ability to scale out or scale up a database to allow it to hold increasing amounts of data without sacrificing performance. This is an important concept, particularly when you have an active stream of data being continuously stored in your database, such as data from apps.

[2:Repetition]
The minimisation of repetition is an aspect of **database normalisation**. In order for a database to be normalised, there are a number of rules which they have to adhere to. We will cover these rules in the [**Defining Data**](https://app.enkipro.com/course/ddl) topic.
In some scenarios, it may be beneficial to have a certain degree of repetition in your relational database, as this may improve performance in a few cases. This is, however, not usually the case and we'd generally like to avoid repetition as much as possible.

[3:Reorganisation]
Usually, it is only relational databases whose performance improves with reorganisation. Non-relational databases can be designed in such a way as to be efficient even with repeated data.
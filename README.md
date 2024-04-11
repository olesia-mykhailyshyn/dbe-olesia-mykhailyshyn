# DATABASE ESSENTIALS

[![Practical Assignments](https://img.shields.io/badge/Practical%20Assignments-Click%20Here-blue)](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn)

## **Databases:**
Databases are the foundation of data management. They act as organized vaults, preserving critical information and making it accessible on demand.

## 📋 [**General Description of the Assignments**](https://teaching.kse.org.ua/pluginfile.php/63060/mod_resource/content/1/Database%20Fundamentals%20%283%29.docx.pdf)

>   [!IMPORTANT]
> 💡 **MYSQL Naming Conventions**
>
> In computer programming, a naming convention is a set of rules for choosing the character sequence to be used for identifiers that denote variables, types, functions, and other entities in source code and documentation. Learn more about [MYSQL Naming Conventions](https://medium.com/@centizennationwide/mysql-naming-conventions-e3a6f6219efe).

### [**Practical Assignment 1**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/tree/main/Assignment_1)

1. **Own DB schema creation**
    - Database ['Beauty Salon'](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_1/Assignment_1.sql) was created.
2. **Data populating**
    - Simple [selects](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_1/Assignment_1_selects.sql) were added. These selects include JOIN as additional task.

> 💬 **Peculiarities of performing this work:**
>
> 1. Design tables, select data types; No keys are required in the tables.
> 2. Insert data; the data should be in the amount of 5-30 records in each table, depending on the needs.
> 3. Prepare 2-3 SELECT queries, queries should be interesting; queries should cover the following clauses: WHERE / GROUP BY / HAVING / ORDER BY / LIMIT (not necessarily all in each query, but mastery of each must be demonstrated).
> 4. As an extra task, prepare an additional query.

### [**Practical Assignment 2**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/tree/main/Assignment_2)

> 💬 **Peculiarities of performing this task:**
>
> Add certain changes, such as adding many-to-many relationships, establishing relationships with "disconnected" tables, making logical sense of some of the tables, and increasing their practical applicability.

1. **Add relationships between tables, all primary and foreign keys have to be added as well as table constraints**
    - Database ['Beauty Salon'](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_2/Assignment_2.sql) was updated.
2. **Code should be run on deployed MySQL server (either installed one or deployed as a *Docker* image)**
   > 💡 Contact for help in case of difficulties or errors [here](https://github.com/Bardin08/kse-examples/blob/master/database-essentials/readme.md).
3. **Add two new [queries](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_2/Assignment_2_queries.sql) which include many-to-many relationships**

>   [!IMPORTANT]
> 💡 [**MYSQL INDEXES**](https://medium.com/free-code-camp/database-indexing-at-a-glance-bb50809d48bd)

4. [**As a bonus:**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_2/Assignment_2_indexes.sql)
    - Individually learn basic information about [**indexes**](https://medium.com/free-code-camp/database-indexing-at-a-glance-bb50809d48bd), understand the main purpose.
    - Create a clone table and apply a simple index.
    - Populate enough data to demonstrate the difference between indexed and non-indexed search. (A Python script was added. It generates a million 'customers').
    - Indexes and execution plan were created.


> 💡 **Here's how you can test the performance of indexes:**
>
> - Open chat-gpt + pyCharm and feed it the database schema (tables).
> - Adjust it so that the script generates batch insert (insert into ... valueS ().
> - Generate from 1 to 5 million records (depending on the number of attributes in the table and the power of your machine).
> - Run the script through Rider (or any other shell you use).
> - Clone the table: CREATE TABLE new_table LIKE old_table; INSERT INTO new_table SELECT * FROM old_table;
> - Add indexes and conduct your experiments.
> - [Option 2 (for those who want to go deeper):]
    >   - Follow steps 1-5 from the first option.
>   - Build an execution plan for an identical query to both tables.
>   - Analyze the execution plan (you are interested in seek & scan operations).

### [**Practical Assignment 3**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/tree/main/Assignment_3)

- Practice with SQL subqueries and sets.

> 💡 [**Information about correlated and non-correlated subqueries**](https://ismatsamadov.medium.com/correlated-vs-non-correlated-subquery-7f3f79858799)

1. To get more [practice](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_3/Queries.sql) write one **SELECT** query, one **UPDATE** query, and one **DELETE** query for the following list of clauses:
    - = with non-correlated subqueries result
    - IN with non-correlated subqueries result
    - NOT IN with non-correlated subqueries result
    - EXISTS with non-correlated subqueries result
    - NOT EXISTS with non-correlated subqueries result
    - = with correlated subqueries result
    - IN with correlated subqueries result
    - NOT IN with correlated subqueries result
    - EXISTS with correlated subqueries result
    - NOT EXISTS with correlated subqueries result
    - Also, we need to write four SELECT queries that include the clause UNION - / UNION ALL / INTERSECT / EXCEPT (could be separate queries or include multiple set clauses).
      **2. Additional task:**
    - Write a simple [Python application](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_3/CRUD.py) that communicates with your MySQL DB executing simple CRUD operations (four queries). CRUD == create, read, update, delete.

### [**Practical Assignment 4**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/tree/main/Assignment_4)

1. **Prepare your own stored [procedures](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_4/Procedures.sql) which demonstrate how to work with all kinds of parameters: IN/OUT/INOUT.**
2. **Add a [transactional mechanism](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_4/Transactions.sql) that contains conditional logic: commit or rollback changes according to condition.**

- [**Bonus:**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_4/CRUD_transaction.py)
    - Demonstrate your knowledge of how to work with transactions using the application layer. Your application should include several operations initiated on the application layer and be executed in the scope of the same transaction.

> 💡 [**Information about transactions**](https://medium.com/@datasciencenexus/mastering-sql-transactions-a-comprehensive-guide-f7759a024f05)

### [**Practical Assignment 5**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/tree/main/Assignment_5)

- Create a [**view**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Assignment_5/View.sql) that displays the schedule for every employee for the current day. The current day should be identified automatically and the schedule should contain the following set of attributes:

    <Employee name> | <comma separated set of services provided by employee> | <time from-to, e.g. 10:00-12:00>, <kind of service> |

- Ordering should be done respectively to the employee's position: highest on the top. If your system does not assume to categorize employees by their maturity level then you need to provide ordering by their performance during the last month (top performers are on the top of your result set).

> 💡 [**Information about views**](https://medium.com/learning-sql/getting-started-with-sql-views-20070b78ab5)

### [**ADDITIONAL task -- Employee metrics**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Metrics.sql)

### [**Database Scalability**](https://github.com/olesia-mykhailyshyn/dbe-olesia-mykhailyshyn/blob/main/Research/Database%20Scalability.pdf)

- The research about Database Scalability.

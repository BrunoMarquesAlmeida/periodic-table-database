 <!-- Please update value in the {}  -->

<h1 align="center">Periodic Table Database</h1>

<div align="center">
   Solution for a challenge from <a href="https://www.freecodecamp.org" target="_blank">freecodecamp.org</a>.
</div>

<div align="center">
  <h3>
    <a href="https://www.freecodecamp.org/learn/relational-database/build-a-periodic-table-database-project/build-a-periodic-table-database">
      Challenge
    </a>
  </h3>
</div>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [Overview](#overview)
  - [Built With](#built-with)
- [How to use](#how-to-use)

<!-- OVERVIEW -->

## Overview

This program was created as a submission to a [freeCodeCamp](https://www.freecodecamp.org) challenge. It is a part of the [Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/). The [challenge](https://www.freecodecamp.org/learn/relational-database/build-a-periodic-table-database-project/build-a-periodic-table-database) was to complete the following tasks:

- You should rename the weight column to `atomic_mass`
- You should rename the `melting_point` column to `melting_point_celsius` and the `boiling_point` column to `boiling_point_celsius`
- Your `melting_point_celsius` and `boiling_point_celsius` columns should not accept null values
- You should add the `UNIQUE` constraint to the `symbol` and `name` columns from the `elements` table
- Your `symbol` and `name` columns should have the `NOT NULL` constraint
- You should set the `atomic_number` column from the `properties` table as a foreign key that references the column of the same name in the `elements` table
- You should create a `types` table that will store the three types of `elements`
- Your `types` table should have a `type_id` column that is an integer and the primary key
- Your `types`  table should have a type column that's a VARCHAR and cannot be null. It will store the different types from the type column in the `properties`  table
- You should add three rows to your `types`  table whose values are the three different types from the `properties`  table
- Your `properties`  table should have a `type_id` foreign key column that references the `type_id` column from the `types`  table. It should be an `INT` with the `NOT NULL` constraint
- Each row in your `properties`  table should have a `type_id` value that links to the correct type from the `types`  table
- You should capitalize the first letter of all the `symbol` values in the `elements` table. Be careful to only capitalize the letter and not change any others
- You should remove all the trailing zeros after the decimals from each row of the `atomic_mass` column. You may need to adjust a data type to `DECIMAL` for this.
- You should add the element with atomic number `9` to your database. Its name is `Fluorine`, symbol is `F`, mass is `18.998`, melting point is `-220`, boiling point is `-188.1`, and it's a `nonmetal`
- You should add the element with atomic number `10` to your database. Its name is `Neon`, symbol is `Ne`, mass is `20.18`, melting point is `-248.6`, boiling point is `-246.1`, and it's a `nonmetal`
- You should create an `element.sh` file
- Your script (`.sh`) file should have executable permissions
- If you run `./element.sh`, it should output only `Please provide an element as an argument.` and finish running.
- If you run `./element.sh 1`, `./element.sh H`, or `./element.sh Hydrogen`, it should output only `The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.`
- Your `properties`  table should not have a type column

### Built With

<!-- This section should list any major frameworks that you built your project using. Here are a few examples.-->

- [PostgreSQL](https://www.postgresql.org/)
- [GNU Bash](https://www.gnu.org/software/bash/)

## How To Use

<!-- Example: -->

To clone and run this application, you'll need [PostgreSQL](https://www.postgresql.org/) and some way to run [GNU Bash](https://www.gnu.org/software/bash/) programs.
From your command line:

```bash
# Rebuild the database
psql -U postgres < periodic_table.sql

# Then start element.sh
./element.sh
```

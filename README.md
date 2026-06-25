# Fatal Road Accidents Analysis in Mexico (1997–2022)

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)

Data analysis project developed to identify the factors associated with fatal road accidents in Mexico between 1997 and 2022.

Created by [Karla Roman](https://github.com/karla-roman)

---

## Project Overview

Road traffic accidents are an important public safety issue in Mexico. Understanding the factors related to fatal accidents can help identify patterns and support future decision-making.

The goal of this project was to prepare, analyze, and visualize official traffic accident data to identify the main factors associated with fatal road accidents.

---

## Business Questions

This project answers the following business questions:

### Context Questions

- How has the number of fatal road accidents changed between 1997 and 2022?
- How are fatal road accidents distributed across Mexican states?

### Analysis Questions

- Which cause has the highest proportion of fatal accidents?
- Which type of accident has the highest proportion of fatal accidents?
- Which temporal patterns show the highest proportion of fatal accidents?
  - Day of the week
  - Hour of the day
- How does the proportion of fatal accidents change according to the driver's alcohol condition?

---

## Dataset

The dataset contains official records of road traffic accidents in Mexico.

| **Attribute** | **Value** |
|-----------|------:|
| Period | 1997–2022 |
| Records | 9,943,594 |
| Coverage | Mexico |
| Source | [Kaggle (Guillermo Hernández), based on INEGI ATUS](https://www.kaggle.com/datasets/guillermohernandezre/accidentes-viales-en-mxico-1997-2022) |

---

## Solution Architecture

```text
SQLite Database (.db)
        │
        ▼
SQLite
        │
        ├── CTAS (Analytical Table)
        ├── Export Accidents Table (.csv)
        └── Export States Table (.csv)
        │
        ▼
PostgreSQL
        │
        ├── Database Creation
        ├── Relational Modeling
        ├── Data Import
        ├── Data Validation
        ├── Exploratory Analysis
        └── Business Queries
        │
        ▼
Power BI
        │
        ├── PostgreSQL Connection
        ├── DAX Measures
        └── Dashboard Development
        │
        ▼
Interactive Dashboard
```

---

## Data Preparation

The original dataset was provided as a **SQLite database (.db)**.

An analytical table was created in **SQLite** using a **CREATE TABLE AS SELECT (CTAS)** statement to combine the required variables into a single dataset. 

The analytical table accidents and the states table were then exported as CSV files.

A new database was created in **PostgreSQL**, where the relational model was designed and both tables were imported for the analysis.

---

## Dashboard

An interactive dashboard was created in **Power BI** to answer the business questions defined for this project.

For a detailed explanation of the methodology, analysis, and findings, see the executive report:

📄 **[Project Report](docs/Informe_accidentes_Mexico.pdf)**

![Dashboard Overview](images/dashboard_overview.png)

---

## Technologies Used

| Technology | Purpose |
|------------|---------|
| SQLite | Analytical table creation |
| PostgreSQL | Database management |
| SQL | Data analysis |
| Power BI | Dashboard development |
| Microsoft Excel | Report export |

---

## Skills Demonstrated

- SQL Development
- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- Business Analysis
- Dashboard Design
- Data Visualization
- PostgreSQL
- Power BI

---

## Repository Structure

```text
fatal-road-accidents-mexico
│
├── README.md
│
├── data
│   ├── accidentes_mexico.csv
│   └── reports
│
├── docs
│   └── Informe_accidentes_Mexico.pdf
│
├── evidence
│   ├── 01_data_extraction.png
│   ├── 02_database_creation.png
│   ├── 03_data_validation.png
│   └── ...
│
├── images
│   └── dashboard_overview.png
│
├── powerbi
│   └── fatal_road_accidents.pbix
│
└── sql
    ├── 01_create_tables.sql
    ├── 02_import_data.sql
    └── ...
```

---

## Key Findings

- Fatal accidents reached their highest levels between 2007 and 2011.
- Chihuahua, Estado de México, and Jalisco recorded the highest number of fatal accidents.
- Accidents involving pedestrians showed the highest fatality proportion.
- Train collisions and vehicle rollovers had the highest fatality proportion among accident types.
- Fatal accidents were more common during weekends and early morning hours.
- Many records contain incomplete information about the driver's alcohol condition.

---

## Limitations

- The dataset does not include a unique accident identifier, so duplicate records could not be verified.
- Some variables contain missing or unspecified values.
- This analysis describes patterns in the data and does not establish causal relationships.

---

## Key Outcome

This project transformed almost ten million traffic accident records into business insights using SQL and Power BI. The final dashboard and report help identify the factors most associated with fatal road accidents in Mexico.

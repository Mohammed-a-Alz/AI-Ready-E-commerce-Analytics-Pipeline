# E-commerce Analytics Pipeline

## Overview
This project builds an end-to-end analytics pipeline for an e-commerce business.

It transforms raw transactional data into a structured data warehouse using **dbt** and **BigQuery**, and exposes consistent, reusable business metrics through a **semantic layer** for reporting and analysis.

The focus is on designing a **scalable analytics layer** where key metrics such as GMV, order volume, and average order value are well-defined, consistent, and easy to use across tools.

---

## Architecture

Raw Data → dbt (Staging) → dbt (Marts / Star Schema) → Semantic Layer (MetricFlow) → BigQuery → Power BI

- **BigQuery**: Data warehouse  
- **dbt**: Data transformation & modeling  
- **MetricFlow (dbt Semantic Layer)**: Centralized metrics layer  
- **Power BI**: Visualization layer  

---

## Data Modeling

The warehouse is designed using a **star schema**, separating facts and dimensions to preserve data granularity and enable flexible analysis.

### Fact Tables
- `fct_orders` → one row per order  
- `fct_order_items` → one row per item  
- `fct_order_payments` → one row per payment  

### Dimension Tables
- `dim_customers`  
- `dim_products`  
- `dim_dates`  

### Key Design Decisions
- **Grain separation**: Orders, items, and payments are modeled separately to avoid duplication and ensure accurate aggregations  
- **No fact-to-fact joins**: Prevents incorrect metrics and double counting  
- **Layered modeling**:
  - `staging` → cleaned and standardized raw data  
  - `marts` → business-ready models  

---

## Semantic Layer & Metrics

A **dbt Semantic Layer (MetricFlow)** is used to define business metrics as a single source of truth.

### Example Metrics
- **Total Revenue (GMV)**  
- **Order Count**  
- **Average Order Value (AOV)**  
- **Average Installments**  

### Benefits
- Consistent metric definitions across tools  
- Reduced duplication of SQL logic  
- Enables self-serve analytics  
- Provides a structured foundation for AI-assisted querying  

---

## Dashboard

The Power BI dashboard provides a high-level overview of business performance:

- GMV, order volume, average order value, average installments  
- Revenue trends with month-over-month comparison  
- Top product categories by revenue  
- Payment method distribution  

![Dashboard](dashboard/screenshots/dashboard.PNG)

---

## Tech Stack

- **Data Warehouse**: BigQuery  
- **Transformation**: dbt (Fusion)  
- **Semantic Layer**: MetricFlow  
- **Visualization**: Power BI  
- **Languages**: SQL  

---

## Key Skills Demonstrated

- Data modeling (Star Schema, Fact & Dimension design)  
- Analytics engineering (dbt, modular transformations, layering)  
- Semantic layer & metrics design  
- SQL (BigQuery)  
- Data transformation & validation  
- BI development (Power BI)  


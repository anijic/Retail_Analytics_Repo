# Retail Analytics: Driving £350K Revenue Opportunity via RFM Segmentation & Product Bundling
![SQL](https://img.shields.io/badge/SQL-336791?style=flat&logo=postgresql&logoColor=white)
![R](https://img.shields.io/badge/R-276DC3?style=flat&logo=r&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white)
![RFM](https://img.shields.io/badge/RFM_Segmentation-£350K_Opportunity-green?style=flat)

- Identified 41.5x-lift product bundles through SQL/R analysis of 540K+ transactions, enabling targeted retention strategies.

## **Dashboard Summary**  
- Interactive Tableau dashboard (linked [here](https://public.tableau.com/views/RetailAnalyticsDashboard_17463450746120/RetailAnalyticsDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))  unifies key metrics, filters by RFM segments, bundles, and country.

![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Retail%20Analytics%20Dashboard.png)

## **Technical Execution**  
- **SQL** : Complex RFM segmentation using window functions  
- **R** : Market basket analysis (arules package) with 41.5x bundle lift  
- **Tableau** : Dynamic dashboard with parameter-driven filters (30% faster decisions).

---

## **Business Impact**  
- Proposed bundling strategy for £5.4K avg-spend "Champion" cohort  
- Estimated a £350K revenue opportunity from public-dataset segmentation and product-bundling analysis  
- Illustrative strategic actions: 10% discount bundles and VIP early access  

---

## **Project Goal & Context**  
This public-data demonstration applies RFM segmentation and market-basket analysis to the UCI Online Retail dataset, which contains more than 500,000 transaction records. The objective is to show how a retail analytics workflow can identify customer segments, product-bundling opportunities, and revenue-growth hypotheses.

---

## **Tools & Technologies**  
- **SQL (MySQL Workbench)** : for data cleaning and preparation  
- **R (RStudio)** : for EDA, Market Basket Analysis, and RFM segmentation  
- **Tableau Desktop** : for building business dashboards  
- **GitHub** : for documentation and version control  

---

## **Data Overview**  
- Cleaned over **540K raw records** from a retail dataset  
- Removed cancelled orders, rows with missing critical fields, outliers, and duplicates  
- Created additional fields: `InvoiceYearMonth`, `TotalSpent`, `RFM Group`, and `ProductBundle`  

---

## **Methodology**  
1. Cleaned data in SQL and exported as .csv file    
2. Prepared output files for Tableau  
3. Designed and exported final visualizations and dashboard to Tableau public  
4. Translated segment and product-affinity results into illustrative retention and bundling recommendations  

---

## **Key Visualizations & Insights**

### **1. Monthly Revenue Trend**
- November 2011 recorded **£1.05M**, a 75% increase vs. monthly average, ideal for **seasonal promotions**.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Monthly%20Revenue%20Trend.png)

### **2. Product Bundles (Top 5)**
- Horizontal bar chart highlighting bundles like *Poppy’s Playhouse* and *Regency Teacup Sets* that outperform standalone products.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Product%20Bundles.png)

### **3. Regional Bundle Sales**
- Shows bundle performance by country, *UK* dominates volume and revenue, while *Germany* and *Netherlands* show niche interest.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Regional%20Bundle%20Sales.png)

### **4. Volume vs. Revenue**
- Items like *World War 2 Gliders* lead in volume but not revenue. *Regency Cakestand* leads revenue despite moderate volume, supports value-based bundling.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Volume%20vs.%20Revenue.png)

### **5. RFM Scatter Plot**
- Segments customers into 6 groups (e.g., Champions, At Risk) using **Recency, Frequency, and Monetary** scores.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/RFM%20Segments.png)

### **6. Top 3 Products in Peak Month**
- Horizontal bar chart showing best-sellers for November: *Rabbit Night Light*, *Paper Chain Kit*, and *Regency Cakestand*.
  
![Alt image](https://raw.githubusercontent.com/anijic/Retail_Analytics_Repo/master/Visualizations/Sheet%20Top%203%20Peak%20Month%20Products.png)

---

## **Key Findings**  
- **63.8%** of customers made repeat purchases  
- **Top revenue month:** November 2011 (**£1.05M**)  
- **Top product by volume:** World War 2 Gliders (**52,956 units**)  
- **Top product by revenue:** Regency Cakestand (**£137,707**)  

---

## **Conclusion**  
This project demonstrates how combining product affinity analysis with customer segmentation enables targeted pricing strategies, bundling, and retention efforts. Visual insights and business logic directly support the retailer's goal to grow revenue. The methodologies used here—specifically RFM segmentation for customer cohort identification and market basket analysis for product affinity—provide a scalable framework for driving data-driven growth in mid-market retail environments.

---

## **Replication Instructions**  
#### SQL (MySQL Workbench)
- Run `01_import_data.sql` to set up the database, create base table, and bulk-load the raw .csv file  
- Run `02_clean_data.sql` to  Clean and standardize the imported data.
- Run `03_finalize_and_export.sql` to export the cleaned dataset.
#### R (RStudio)
- Run `EDA & Advanced Analysis.Rmd` to perform EDA, Market Basket Analysis, and RFM segmentation.
#### Tableau
- Open `Retail Analytics_ Product Bundling & Retention Dashboard.twbx` and connect to `online_retail_viz_ready.csv`, `rfm_summary.csv` and filtered_rules.csv.

---

## **References**  
- UCI Machine Learning Repository – 'Online Retail' Dataset (linked [here](https://archive.ics.uci.edu/dataset/352/online+retail))  
- Association Rules via `arules` R package  
- RFM segmentation framework adapted from industry best practices

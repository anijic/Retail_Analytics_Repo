# Retail Analytics: Product Bundling & Retention

- Analyzing over 500K Transactions via RFM & Market Basket Analysis to Drive Revenue Growth through Bundling & Retention Using SQL, R, and Tableau.

## **Dashboard Summary**  
- Interactive Tableau dashboard (linked [here](https://public.tableau.com/views/RetailAnalyticsProductBundlingRetentionDashboard/RetailAnalyticsProductBundlingRetention?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))  unifies key metrics, filters by RFM segments, bundles, and country.

![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Retail%20Analytics_%20Product%20Bundling%20%26%20Retention.png)

## **Project Goal & Context**  
A mid-sized UK retailer with over 500,000 transactions aims to grow revenue by **15% in 6 months** through **product bundling** and **customer retention** strategies. This project applies SQL, R, and Tableau to uncover purchasing patterns and segment customers for targeted marketing.

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
2. Performed EDA and advanced analytics in R (Market Basket + RFM)  
3. Prepared output files for Tableau  
4. Designed and exported final visualizations and dashboard to Tableau public  
5. Developed insights, business recommendations, and strategic actions  

---

## **Key Visualizations & Insights**

### **1. Monthly Revenue Trend**
- November 2011 recorded **£1.05M**, a 75% increase vs. monthly average, ideal for **seasonal promotions**.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Monthly%20Revenue%20Trend.png)

### **2. Product Bundles (Top 5)**
- Horizontal bar chart highlighting bundles like *Poppy’s Playhouse* and *Regency Teacup Sets* that outperform standalone products.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Product%20Bundles.png)

### **3. Regional Bundle Sales**
- Shows bundle performance by country, *UK* dominates volume and revenue, while *Germany* and *Netherlands* show niche interest.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Regional%20Bundle%20Sales.png)

### **4. Volume vs. Revenue**
- Items like *World War 2 Gliders* lead in volume but not revenue. *Regency Cakestand* leads revenue despite moderate volume, supports value-based bundling.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Volume%20vs.%20Revenue.png)

### **5. RFM Scatter Plot**
- Segments customers into 6 groups (e.g., Champions, At Risk) using **Recency, Frequency, and Monetary** scores.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/RFM%20Segments.png)

### **6. Top 3 Products in Peak Month**
- Horizontal bar chart showing best-sellers for November: *Rabbit Night Light*, *Paper Chain Kit*, and *Regency Cakestand*.
  
![Alt image](https://github.com/anijic/Retail_Analytics_Repo/blob/master/Visualizations/Sheet%20Top%203%20Peak%20Month%20Products.png)

---

## **Key Findings**  
- **63.8%** of customers made repeat purchases  
- **Top revenue month:** November 2011 (**£1.05M**)  
- **Top product by volume:** World War 2 Gliders (**52,956 units**)  
- **Top product by revenue:** Regency Cakestand (**£137,707**)  
- **Top bundle lift:** Poppy’s Playhouse Bedroom → Kitchen (**lift = 41.5×**)  
- **High-value segment (Champions):** Avg. spend = **£5,435** with **10.7 orders**

---

## **Business Recommendations**  
1. **Introduce High-Affinity Bundles**  
   Target products frequently bought together (e.g., Poppy’s Playhouse sets, Regency Teacups & Cakestands).  

2. **Segment Customers for Loyalty Campaigns**  
   Differentiate offers between *Champions* and *At Risk* customers based on RFM grouping.

3. **Time Promotions Around Seasonality**  
   Leverage high revenue months (e.g., November) for themed campaigns like “Black Friday Bundles.”

---

## **Strategic Actions**  
-  Offer **10% discount** on top 3 bundles for *At Risk* customers via personalized email.  
-  Provide *Champions* early access to new arrivals and invite-only VIP sales.  
-  Launch seasonal marketing for Q4 with **bundle promotions** targeting gifting behavior.  
-  Validate outlier bulk purchases for **corporate or wholesale pricing models**.  

---

## **Conclusion**  
This project demonstrates how combining product affinity analysis with customer segmentation enables **targeted pricing strategies, bundling, and retention** efforts. Visual insights and business logic directly support the retailer’s goal to grow revenue.

---

## **Replication Instructions**  
- To reproduce this project:
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

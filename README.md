# Ola Ride Data Analysis
This is a Data Analytics project on OLA Cabs where I have tried to retrieve data using MySQL and created an interactive visualization dashboard using Power BI.

The dataset is an augmented dataset containing values of month of July.
## 🔧 Tools Used
- **SQL (MySQL)** – For data extraction and transformation
- **Power BI** – For building the final visual analytics dashboard

## 📂 Project Overview
The main objectives of this project were:
- Identify patterns in bookings and cancellations
- Understand customer and driver behavior
- Derive operational insights from ride and payment data
- Visualize data for better business decisions

## 📊 SQL Analysis Highlights

Here are some of the key SQL queries used in the analysis:

### 1. Retrieve Successful Bookings
```sql
CREATE VIEW success_bookings AS
SELECT * FROM bookings
WHERE booking_Status = 'success';

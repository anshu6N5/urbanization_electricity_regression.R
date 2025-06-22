# urbanization_electricity_regression.R
The relationship between urbanization and access to electricity in India using World Development Indicators (WDI) data. The analysis uses a simple linear regression model to examine whether increasing urban population correlates with greater electricity access.
## 📊 Data Source
- World Bank World Development Indicators (WDI)
  - `SP.URB.TOTL.IN.ZS`: Urban population (% of total)
  - `EG.ELC.ACCS.ZS`: Access to electricity (% of population)
## 📦 Tools & Packages Used
- `R`, `ggplot2`, `WDI`, `janitor`.
- ## 📈 Key Findings
- A strong positive relationship exists between urban population and access to electricity in India over the period 2000–2022.
- **R² = 0.9899**: About 98% of the variation in electricity access is explained by urban population changes.
- The linear regression line fits the trend well, with narrow confidence intervals.
- ## 📁 Files
- `electricity_vs_urban_india.R`: Main R script with code
- `india_urban_electricity_data.csv`: Cleaned data (optional)
- `electricity_vs_urban_plot.png`: Visualization of regression.
- ## 📚 How to Run
1. Open `electricity_vs_urban_india.R` in RStudio
2. Run all chunks step-by-step
3. Plot and regression summary will be generated.
4. ## 📌 Author
[Anshu Kumar]  
[https://www.linkedin.com/in/anshu-kumar-04240b225/]  
[srivastavanshu673@gmail.com]
[https://github.com/anshu6N5]
   

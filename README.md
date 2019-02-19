# Effective Quick Insights and Q&amp;A in Power BI - Resources

http://bit.ly/ps-qa

This repository contains reference materials for the Pluralsight course [Effective Quick Insights and Q&amp;A in Power BI](https://pluralsight.com)

Resources are found according to each course module:
* [Simplifying Data Queries with Q&A](#simplifying-data-queries-with-qa)
* [Simplifying Data Analysis with Quick Insights](#simplifying-data-analysis-with-quick-insights)
* [Optimizing Data for Q&A by Making your Data Tidy and Polished](#optimizing-data-for-qa-by-making-your-data-tidy-and-polished)
* [Exploring Data with Q&A](#exploring-data-with-qa)
* [Mining Data with Minimal Effort Using Quick Insights](#mining-data-with-minimal-effort-using-quick-insights)
* [Voicing Questions Using Cortana](#voicing-questions-using-cortana)
* [Enabling Q&A for an On-premises Dataset](#enabling-qa-for-an-on-premises-dataset)

***
## Simplifying Data Queries with Q&A
#### Suggested Prerequisite Pluralsight Courses:
* [Getting Started with Power BI](http://bit.ly/getting-started-power-bi) by Stacia Misner Varga
* [Getting Started with Power BI for Business Professionals](http://bit.ly/getting-started-power-bi-business-professionals) by Ben Howard

#### Obvience Sample Dataset Information
* Main [Power BI Sample Data](https://docs.microsoft.com/en-us/power-bi/sample-datasets) site
* Tour of the [Customer Profitability Sample](https://docs.microsoft.com/en-us/power-bi/sample-customer-profitability)

#### Sample Files for 'Bad Model' Demo
* [Wide World Importers](http://bit.ly/WideWorldImporters) download site
	* Download [WideWorldImportersDW-Full.bak](https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImportersDW-Full.bak) if deploying to on-premises SQL Server 2016 SP1 (or later)
	* Download [WideWorldImportersDW-Standard.bacpac](https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImportersDW-Standard.bacpac) if deploying to 'Standard' tier Azure SQL Database
	* Download [WideWorldImportersDW-Full.bacpac](https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImportersDW-Full.bacpac) if deploying to 'Premium' tier Azure SQL Database
	* ['Bad Model' Zip File](https://github.com/Jim-Kay/power-bi-quick-insights-qna/raw/master/Simplifying_Data_Queries_with_Q%26A/WWI_BadModel.zip)
		* Contains the following files:
		   * __'Bad Model' SQL Script__ (WWI_BadModel.sql)
			 * Run this against the WideWorldImportersDW database to create a 'BadModel' schema plus several views used in the demo.
		   * __'Bad Model' Power BI Template__ (WWI_BadModel.pbit)
			 * Once the 'BadModel' schema and views have been added, open this template in Power BI Desktop Version: 2.65.5313.841 (December 2018) or later
			 * The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.

 #### Additional Information
   * [Power BI Embedded](http://bit.ly/PowerBI-Embedded)

***
## Simplifying Data Analysis with Quick Insights
#### Obvience Sample Dataset Information
* Main [Power BI Sample Data](https://docs.microsoft.com/en-us/power-bi/sample-datasets) site
* Tour of the [Human Resources Sample Dataset](https://docs.microsoft.com/en-us/power-bi/sample-human-resources)


***
## Optimizing Data for Q&A by Making Your Data Tidy and Polished
#### Sample Files for 'WWI Sales' Demo
* ['WWI Sales' Zip File](https://github.com/Jim-Kay/power-bi-quick-insights-qna/raw/master/Optimizing_Data_for_Q%26A/WWI_Sales.zip)
	* Contains the following files:
		* __'Sales' SQL Script__ (pbi_Sales.sql)
			* Run this against the WideWorldImportersDW database to create a 'pbiSales' schema plus several views used in the demo.
		* __Initial 'Sales' Power BI Template__ (pbiSales_initial.pbit)
			* This template simply loads the contents of the pbiSales views into Power BI, and can be used at the start of the demo.
			* Once the 'pbiSales' schema and views have been added, open this template in Power BI Desktop Version: 2.65.5313.841 (December 2018) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.
		* __Final 'Sales' Power BI Template__ (pbiSales_complete.pbit)
			* This template can be used to explore the model after most 'tidying' and 'polishing' have been completed.
			* Once the 'pbiSales' schema and views have been added, open this template in Power BI Desktop Version: 2.65.5313.841 (December 2018) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.

#### Checklists
* [Checklist for creating 'Tidy' views](https://gist.github.com/Jim-Kay/2758406ea7146bb7c5ad93f91002f721)
* [Checklist for creating 'Polished' data models](https://gist.github.com/Jim-Kay/7e1d2037bd27cd17508bf7d49da89c1f)

#### Additional Information
* [View the Improvement Request](http://bit.ly/fix-default-summarization) to add an option to not automatically summarize table columns.

***
## Exploring Data with Q&A
#### Sample Files for 'WWI Sales 2' Demo
* ['WWI Sales 2' Zip File](https://github.com/Jim-Kay/power-bi-quick-insights-qna/raw/master/Optimizing_Data_for_Q%26A/WWI_Sales.zip)
	* Contains the following files:
		* __'Mostly Polished' Power BI Template__ (wwi_pbiSales_mostly_polished.pbit)
			* This template can be used to explore the model after most 'tidying' and 'polishing' have been completed.
			* Once the 'pbiSales' schema and views have been added, open this template in Power BI Desktop Version: 2.65.5313.841 (December 2018) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.

***
## Mining Data with Minimal Effort Using Quick Insights

***
## Voicing Questions Using Cortana

***
## Enabling Q&A for an On-premises Dataset



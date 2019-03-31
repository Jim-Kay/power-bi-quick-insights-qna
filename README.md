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
* ['WWI Sales 2' Zip File](https://github.com/Jim-Kay/power-bi-quick-insights-qna/raw/master/Exploring_Data_with_Q%26A/WWI_Sales_2.zip)
	* Contains the following files:
		* __'Mostly Polished' Power BI Template__ (wwi_pbiSales_mostly_polished.pbit)
			* This template can be used to explore the model after most 'tidying' and 'polishing' have been completed.
			* Once the 'pbiSales' schema and views have been added, open this template in Power BI Desktop Version: 2.65.5313.841 (December 2018) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.

***
## Mining Data with Minimal Effort Using Quick Insights
#### Sample Data Sources for Slides
* [Contoso Sales for Power BI](https://www.microsoft.com/en-us/download/details.aspx?id=46801)
* [Power BI Desktop Samples from Microsoft](https://github.com/Microsoft/powerbi-desktop-samples)
* [Summer Olympics - Linguistic Schema Sample](https://go.microsoft.com/fwlink/?linkid=871858) (Based on [this](https://powerbi.microsoft.com/en-us/blog/editing-q-a-linguistic-schemas/) article)
* [Obvience Samples](https://docs.microsoft.com/en-us/power-bi/sample-datasets)
	* [Customer Profitability](https://docs.microsoft.com/en-us/power-bi/sample-customer-profitability)
	* [IT Spend Analysis](https://docs.microsoft.com/en-us/power-bi/sample-it-spend)
	* [Human Resources](https://docs.microsoft.com/en-us/power-bi/sample-human-resources)
	* [Opportunity Analysis](https://docs.microsoft.com/en-us/power-bi/sample-opportunity-analysis)
	* [Procurement Analysis](https://docs.microsoft.com/en-us/power-bi/sample-procurement)
	* [Retail Analysis](https://docs.microsoft.com/en-us/power-bi/sample-retail-analysis)
	* [Sales and Marketing](https://docs.microsoft.com/en-us/power-bi/sample-sales-and-marketing)
	* [Supplier Quality](https://docs.microsoft.com/en-us/power-bi/sample-supplier-quality)
* [Power BI Python Samples](https://powerbi.microsoft.com/en-us/blog/python-visualizations-in-power-bi-service/) (Based on the UC Irvine [Bike Sharing Dataset](https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset))
* [Will Thompson's Destiny PVP Sample](http://blogs.catapultsystems.com/lclark/archive/2016/04/08/microsoft-data-insights-summit-session-review-will-thompsons-15-weird-tricks-power-bi-desktop-session/) from the Microsoft Data Insights Summit in 2016
* [Will Thompson's Article on the Gartner bakeoff - Opioid Crisis Investigation](https://powerbi.microsoft.com/en-us/blog/building-our-report-on-the-opioid-crisis-for-the-gartner-bakeoff/)
	
#### Additional Information
* [End User Insight Types](https://docs.microsoft.com/en-us/power-bi/consumer/end-user-insight-types)
* [Explanation of 'Quick Insights' mechanics by Microsoft Research](https://www.microsoft.com/en-us/research/project/quickinsights)
* [Examples of Misleading Graphs](https://www.statisticshowto.datasciencecentral.com/misleading-graphs)
* [Finding Clusters using the Scatter Chart in Power BI](http://bit.ly/power-bi-clusters)

***
## Voicing Questions Using Cortana
#### Sample Files for 'Cortana Answer Card' Demo
* ['WWI Sales 3' Zip File](https://github.com/Jim-Kay/power-bi-quick-insights-qna/raw/master/Voicing_Questions_with_Cortana/WWI_Sales_3.zip)
	* Contains the following files:
		* __'Cortana Answer Card Initial' Power BI Template__ (WWI Sales 3 - Cortana Initial.pbit)
			* This template will connect to the 'Tidy and Polished' WWI Sales database created earlier
			* Several reports have been added which are ready to be enabled for Cortana integration
			* Open this template in Power BI Desktop Version: 2.67.5404.801 (March 2019) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.
		* __'Cortana Answer Card Final' Power BI Template__ (WWI Sales 3 - Cortana Final.pbit)
			* This template will connect to the 'Tidy and Polished' WWI Sales database created earlier
			* All reports have been fully configured to work with Cortana
			* Open this template in Power BI Desktop Version: 2.67.5404.801 (March 2019) or later
			* The template will prompt you for your database instance name and the name you gave the WideWorldImportersDW database.


***
## Enabling Q&A for an On-premises Dataset



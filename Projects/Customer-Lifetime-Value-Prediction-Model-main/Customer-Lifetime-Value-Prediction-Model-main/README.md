# Customer Lifetime Value Prediction

# Business Problem

An Auto Insurance company in the USA is facing issues in retaining its customers and wants to advertise promotional offers for its loyal customers. They are considering Customer Lifetime Value CLV as a parameter for this purpose. Customer Lifetime Value represents a customer’s value to a company over a period of time. It’s a competitive market for insurance companies, and the insurance premium isn’t the only determining factor in a customer’s decisions. CLV is a customer-centric metric, and a powerful base to build upon to retain valuable customers, increase revenue from less valuable customers, and improve the customer experience overall. Using CLV effectively can improve customer acquisition and customer retention, prevent churn, help the company to plan its marketing budget, measure the performance of their ads in more detail, and much more.
___________________________________________________________________________________________________________________________________________
# Project Overview
The objective of the problem is to accurately predict the Customer Lifetime Value(CLV) of the customer for an Auto Insurance Company
Performed EDA to understand the relation of target variable CLV with the other features.
Statistical Analysis techniques like OLS for numerical and Mann–Whitney U and also Kruskal Wallis test for the categorical variables were performed to find the significance of the features with respect to the target.
Supervised Regression Models like Linear Regression, Ridge Regression, Lasso Regression, DecisionTree Regression, Random Forest Regression and Adaboost Regression.
Using GridSearchCV with Random Forest Regression gave the best RMSE and R^2 score values
_________________________________________________________________________________________________________________________________________________________
# Dataset Description
The dataset represents Customer lifetime value of an Auto Insurance Company in the United States, it includes over 24 features and 9134 records to analyze the lifetime value of Customer.

# Exploratory Data Analysis
Univariate, Bivariate and Multivariate Analysis were performed to bring out important aspects of data into focus for further analysis. Some of the highlights from EDA are listed below.

# Univariate Analysis

<img width="602" height="432" alt="CLV" src="https://github.com/user-attachments/assets/509b90d7-6251-4c60-8a10-85ac8ea2f7b4" />

# CLV is heavily right skewed in the data

<img width="580" height="434" alt="location" src="https://github.com/user-attachments/assets/70793288-2266-4a89-a4cd-338fdcd01753" />


Most of the customers are from the suburban region

# Bivariate Analysis
<img width="589" height="432" alt="bi" src="https://github.com/user-attachments/assets/348f8631-6991-42b0-8c6b-08bd51b19a93" />

CLV and Monthly premium auto have a positive correlation and there is a linear relationship between them.

# Multivariate Analysis

<img width="707" height="501" alt="Heatmap" src="https://github.com/user-attachments/assets/f520b66f-c9f4-495d-a580-5a825e5c51fe" />

> There is a positive correlation between CLV and the monthly premium auto
> There is a slight positive correlation between the total claim amount and CLV.
> Income has a lesser positive correlation with CLV

# Evaluation Metric
RMSE and R^2 score were chosen as the metric for the models.

# Supervised Models Used

Model   	                              R^2Score	    RMSE
LinearRegression	                      0.25        	0.5772
Ridge Regression	                      0.21	        0.5925
Lasso Regression		                    0.19	        0.5992
DecisionTree Regression		              0.84	        0.2668
RandomForest Regression	                0.90	        0.2047
Adaboost Regression	                    0.89	        0.2181
RandomForest with GridSearchCV	        0.91	        0.1956

# Results of the project:
____________________________________________________
RandomForestRegressor(max_depth=10, random_state=42)

--- Model Performance ---
Mean Absolute Error (MAE): $1570.39
Root Mean Squared Error (RMSE): $4100.40
R-Squared Score: 0.67

--- Customer Segments Sample ---
  Customer  Predicted_LTV   LTV_Segment
0  BU79786    2716.695865     Low Value
1  QZ44356    6673.888128  Medium Value
2  AI49188   16926.786935    High Value
3  WW63253    7706.298884  Medium Value
4  HB64268    2857.926155     Low Value


# Feature Importance Plot

<img width="974" height="547" alt="Feature Importance Plot" src="https://github.com/user-attachments/assets/a02b567b-6139-4adf-9508-5ab16286946a" />

# Actual vs Predicted Distribution

<img width="859" height="547" alt="Actual vs Predicted Distribution" src="https://github.com/user-attachments/assets/d494e21d-95f2-4ea8-b533-5c77d896224e" />

# Segment Breakdown

<img width="704" height="470" alt="Segment Breakdown" src="https://github.com/user-attachments/assets/7ad98637-c730-4061-99fc-1619a0a30d55" />

# Final Model

By comparing RMSE and R^2 score results of models and then we choose the best model as the Random Forest with GridSearchCV, having the best evaluation scores.

# Conclusion

Overall we can see that No of policies, Monthly Premium auto, Total Claim amount, Months Since Policy Inception, Income , Months Since Last Claim, Number of Open Complaints, Coverage_Extended,vEmploymentStatus_Employed and Renew Offer Type_Offer2 are the important features in predicting the Customer Lifetime Value.
The customers having more number of policies with high monthly premium will add more value to company.
Ironically being an auto insurance company, the type of vehicle or size does not have an impact on the CLV prediction.
The insurance agents should start increasing their policy advertisement for the customers who have more no. of policies, which is the major feature in predicting the CLV.

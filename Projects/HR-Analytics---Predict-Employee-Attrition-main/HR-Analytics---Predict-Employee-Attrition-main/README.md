IBM-HR-Analytics-Employee-Attrition-and-Performance-Prediction


# HR ANALYTICS
HR analytics is the process of collecting and analyzing Human Resource (HR) data in order to improve an organization’s workforce performance. The process can also be referred to as talent analytics, people analytics, or even workforce analytics. This method of data analysis takes data that is routinely collected by HR and correlates it to HR and organizational objectives. Doing so provides measured evidence of how HR initiatives are contributing to the organization’s goals and strategies.

# OBJECTIVE
Employee attrition is the rate at which employees leave a company. The goal of this analysis is to model employee attrition and determine the most dominant contributing factors that govern this turnover. Through this kind of analysis, we can understand how many employees are likely to leave, while also determining which employees are at the highest risk and for what reasons.

# MOTIVATION
The project stems from the potential to improve employee satisfaction, reduce costs, enhance organizational performance, and create a positive workplace culture. It's an opportunity to use data and analytics to make meaningful changes that benefit both employees and the organization as a whole.

# SYSTEM ARCHITECTURE
System Architecture
The methodology for IBM-HR-Analytics-Employee-Attrition-and-Performance-Prediction is as follows:-
- Load the Dataset: The IBM HR Analytics Attrition Dataset is loaded using the pd.read_csv() function. The head() and info() methods are used to display the first few rows and get information about the dataset, respectively.
- Knowing the Dataset: Basic Information about the dataset is generated; numerical and categorical attributes are enlisted.
- Data Cleaning: Any missing values in the dataset are dropped using the dropna() method.
- Data Visualization: Matplotlib and Seaborn libraries are used to visualize the data. 
- Statistical Analysis: The ANOVA Test is performed to analyze the Numerical Features' Importance in Employee Attrition, while the Chi-Square Test to Analyze the Categorical Feature Importance in Employee Attrition.
- Data Preprocessing: The target variable 'Attrition' is mapped to binary values (1 for 'Yes' and 0 for 'No'). Selected features are extracted from the dataset and one-hot encoded using the get_dummies() function.
- Splitting the Dataset: The dataset is split into training and testing sets using the train_test_split() method from scikit-learn.
- Implementing Machine Learning Algorithms: Logistic Regression, XGBoost, CatBoost, AdaBoost, LightGBM, Decision Tree, and Random Forest classifiers are initialized and trained using the training data.
- Model Evaluation: The accuracy score and confusion matrix are computed to evaluate the performance of each algorithm on the testing data.
- Results: The results, including the accuracy and confusion matrix, are printed for each algorithm.
- Model Performance Comparison: The hvPlot library is used to visualize the ROC curve diagram comparing the performance of all models used.

# DATASET
This is a hypothetical dataset created by IBM data scientists. The dataset has (1470R X 35C) that contains numeric and categorical data types describing each employee’s background and characteristics, and labeled with whether they are still in the company or whether they have gone to work somewhere else.

# Dataset Attributes
01] Age
02] Attrition
03] BusinessTravel
04] DailyRate
05] Department
06] DistanceFromHome
07] Education
08] EducationField
09] EmployeeCount
10] EmployeeNumber
11] EnvironmentSatisfaction
12] Gender
13] HourlyRate
14] JobInvolvement
15] JobLevel
16] JobRole
17] JobSatisfaction
18] MaritalStatus
19] MonthlyIncome
20] MonthlyRate
21] NumCompaniesWorked
22] Over18
23] OverTime
24] PercentSalaryHike
25] PerformanceRating
26] RelationshipSatisfaction
27] StandardHours
28] StockOptionLevel
29] TotalWorkingYears
30] TrainingTimesLastYear
31] WorkLifeBalance
32] YearsAtCompany
33] YearsInCurrentRole
34] YearsSinceLastPromotion
35] YearsWithCurrManager
Dataset Link: https://www.kaggle.com/pavansubhasht/ibm-hr-analytics-attrition-dataset

# LIBRARIES USED:
- Pandas
- NumPy
- Matplotlib
- Seaborn
- HvPlot
- SciPy
- Sklearn
- XGBoost
- LightGBM
- CatBoost
- Warnings

# Tools Used:
Google Colab
Excel
Github
Power BI

# PREREQUISITES
- Python Programming
- Data Science
- Data Analysis
- Data Pre-processing
- Data Visualization
- Statistical Analysis
- Machine Learning Algorithms
- Performance Metrics.

# MODEL EVALUATION
ALGORITHMS	TRAINING DATA ACCURACY SCORE	TESTING DATA ACCURACY SCORE
Logistic Regression	0.9271	0.8639
Random Forest	0.8902	0.8413
Support Vector Machine	0.9349	0.8662
XGBoost	1.0000	0.8526
LightGBM	1.0000	0.8390
CatBoost	0.9845	0.8503
AdaBoost	0.9077	0.8322

# COMPARING MODEL PERFORMANCE USING ROC CURVE
ROC Curve

# CONCLUSION
In conclusion, we embarked on a comprehensive analysis of the IBM HR Analytics Attrition Dataset, from data loading to model evaluation. By implementing and evaluating various machine learning algorithms, we gained insights into which models are effective for predicting employee attrition. The results and visualizations generated throughout the process provide valuable information for decision-makers and HR professionals seeking to understand and mitigate employee attrition within the organization. This project showcases the power of data analysis and machine learning in addressing real-world business challenges.

# REFERENCES
- 01] Mishra S N, Lama D R and Pal Y 2016 Human Resource Predictive Analytics (HRPA) for HR Management in Organizations International Journal Of Scientific & Technology Research 5(5) 33-35
- 02] Hoffman M and Tadelis S 2018 People Management Skills, Employee Attrition, and Manager Rewards: An Empirical Analysis National Bureau of Economic Research
- 03] Frye A, Boomhower C, Smith M, Vitovsky L and Fabricant S 2018 Employee Attrition: What Makes an Employee Quit? MU Data Science Review 1(1)
- 04] S. Rabiyathul Basariya, Ramyar Rzgar Ahmed, A STUDY ON ATTRITION - TURNOVER INTENTIONS OF EMPLOYEES, International Journal of Civil Engineering and Technology (IJCIET), 2019, 10(1), PP2594-2601
- 05] Halkos, George & Bousinakis, Dimitrios, 2017. "The effect of stress and dissatisfaction on employees during crisis," Economic Analysis and Policy, Elsevier, vol. 55(C), pages 25-34.
- 06] Glavas, A., & Willness, C. (2020). Employee (dis)engagement in corporate social responsibility. In D. Haski-Leventhal, L. Roza, & S. Brammer (Eds.), Employee engagement in corporate social responsibility (pp. 10–27). Sage Publications Ltd. https://doi.org/10.4135/9781529739176.n2
- 07] S. Yadav, A. Jain and D. Singh, "Early Prediction of Employee Attrition using Data Mining Techniques," 2018 IEEE 8th International Advance Computing Conference (IACC), Greater Noida, India, 2018, pp. 349-354, doi: 10.1109/IADCC.2018.8692137.
- 08] R. Jain and A. Nayyar, "Predicting Employee Attrition using XGBoost Machine Learning Approach," 2018 International Conference on System Modeling & Advancement in Research Trends (SMART), Moradabad, India, 2018, pp. 113-120, doi: 10.1109/SYSMART.2018.8746940.
- 09] Alduayj, Sarah & Rajpoot, Kashif. (2018). Predicting Employee Attrition using Machine Learning. 93-98. 10.1109/INNOVATIONS.2018.8605976. 
- 10] Setiawan, Irwan & Suprihanto, Suprihanto & Nugraha, Ade & Hutahaean, Jonner. (2020). HR analytics: Employee attrition analysis using logistic regression. IOP Conference Series: Materials Science and Engineering. 830. 032001. 10.1088/1757-899X/830/3/032001. 
- 11] Yadav, Sandeep & Jain, Aman & Singh, Deepti. (2018). Early Prediction of Employee Attrition using Data Mining Techniques. 349-354. 10.1109/IADCC.2018.8692137.
- 12] I. Ballal, S. Kavathekar, S. Janwe, P. Shete, and N. Bhirud, “People Leaving the Job-An Approach for Prediction Using Machine Learning,” Int. J. Res. Anal. Rev., vol. 7, no. 1, pp. 8–10, 2020, [Online]. Available: www.ijrar.org
- 13] A. Qutub, A. Al-Mehmadi, M. Al-Hssan, R. Aljohani, and H.S. Alghamdi, “Prediction of Employee Attrition Using Machine Learning and Ensemble Methods,” Int. J. Mach. Learn. Comput., vol. 11, no. 2, pp. 110–114, 2021, doi:10.18178/ijmlc.2021.11.2.1022.
- 14] N. Mansor, N. S. Sani, and M. Aliff, “Machine Learning for Predicting Employee Attrition,” Int. J. Adv. Comput. Sci. Appl., vol. 12, no. 11, pp. 435–445, 2021, doi: 10.14569/IJACSA.2021.0121149.
- 15] D. Saisanthiya, V. M. Gayathri, and P. Supraja, “Employee Attrition Prediction Using Machine Learning and Sentiment Analysis,” Int. J. Adv. Trends Comput. Sci. Eng., vol. 9, no. 5, pp. 7550–7557, 2020, doi: 10.30534/ijatcse/2020/91952020.


# LICENSE
The gem is available as open source under the terms of the MIT License.

# Results:
                    Feature  Importance
13                 JobLevel    0.199181
21                 OverTime    0.154318
14                  JobRole    0.101082
16            MaritalStatus    0.100736
17            MonthlyIncome    0.067615
4                 DailyRate    0.058550
26        TotalWorkingYears    0.052052
31  YearsSinceLastPromotion    0.047829
6          DistanceFromHome    0.043576
30       YearsInCurrentRole    0.028849

# Logistic Regression Accuracy: 86.82%
Accuracy: 91.22%
ROC AUC: 0.8824

# -- Logistic Regression Performance ---
Accuracy: 0.8784
ROC AUC: 0.8195
              precision    recall  f1-score   support

           0       0.89      0.98      0.93       248
           1       0.75      0.38      0.50        48

    accuracy                           0.88       296
   macro avg       0.82      0.68      0.72       296
weighted avg       0.87      0.88      0.86       296

# Decision Tree Accuracy: 80.41%
# --- Decision Tree Performance ---
Accuracy: 0.8581
ROC AUC: 0.7105
              precision    recall  f1-score   support

           0       0.86      0.99      0.92       248
           1       0.80      0.17      0.28        48

    accuracy                           0.86       296
   macro avg       0.83      0.58      0.60       296
weighted avg       0.85      0.86      0.82       296


# Reason for the attrition
Feature Importance Interpretation
JobLevel 0.199 Primary Predictor. Attrition is tied to the employee's rank/seniority.
OverTime 0.154 Work-Life Balance. Burnout is a major cause of resignation.
MonthlyIncome 0.067 Financial. While important, it is actually less influential than JobLevel and OverTime in this specific model.
Promotion Gap 0.047 Growth. Stagnation contributes but is a secondary factor compared to the daily grind (Overtime).

# Data Analysis Key Findings
The attrition rate for the 'Human Resources' department is 19.05%.
The attrition rate for the 'Research & Development' department is 13.75%.
'Human Resources' exhibits a higher attrition rate (19.05%) compared to 'Research & Development' (13.75%).

# Insights or Next Steps
Further investigation is recommended to understand the underlying causes of the higher attrition rate in the 'Human Resources' department.
Consider conducting an in-depth analysis of factors such as workload, compensation, career development opportunities, and employee satisfaction specific to the 'Human Resources' department to inform targeted retention strategies.

# SHAP value analysis 
<img width="782" height="940" alt="SHAP Value" src="https://github.com/user-attachments/assets/9de922a4-fac7-4816-9e04-43fc10934203" />

# ROC Curve Values
<img width="978" height="778" alt="ROC curve" src="https://github.com/user-attachments/assets/78093d35-b066-4268-a965-c802c0a66004" />


# Power Bi Dashboard:

<img width="641" height="354" alt="Main Dashboard" src="https://github.com/user-attachments/assets/aa80bd03-4449-4a82-bca6-7f5640428df4" />

<img width="662" height="366" alt="Different Attrition" src="https://github.com/user-attachments/assets/49e872a8-8262-4da1-a690-93a3ef90c5da" />



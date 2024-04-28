import matplotlib.pyplot as plt
import streamlit as st
import mysql.connector

import pickle
import pandas as pd
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from sklearn.decomposition import PCA
from sklearn.model_selection import train_test_split

class Prep:
    def __init__(self) -> None:
        with open('xgb_clf.pickle_1', 'rb') as f:
            model = pickle.load(f)
        self.model = model
        self.ohe = ['BusinessTravel',
                'Department',
                'EducationField',
                'Gender',
                'JobRole',
                'MaritalStatus',
                'City']
        self.ss = StandardScaler()
        self.n = 34

    def prep_df(self,df):
        df2 = df.copy()
        df1 = df.copy()
        df1.drop(columns=['EmpID'],inplace = True)
        #df1['Attrition'] = df1['Attrition'].map({'Yes': 1, 'No': 0})
        df1['EverBenched'] = df1['EverBenched'].map({'Yes': 1, 'No': 0})
        df_encoded = pd.get_dummies(df1, columns=self.ohe,drop_first=True)
        #self.X = df_encoded.drop(columns='Attrition')
        #self.y = df_encoded['Attrition']
        xs = df_encoded.copy()
        xs.iloc[:,0:50] = self.ss.fit_transform(df_encoded)
        #X_train, X_test, y_train, y_test = train_test_split( self.X, self.y, test_size=0.2, random_state=4)
        pca = PCA(n_components=self.n)
        pca.fit(xs)
        x_pca = pca.transform(xs)

        df2['Attrition'] = self.model.predict(x_pca)
        return df2






class EmployeeData:
    def __init__(self):
        self.host = 'localhost'
        self.user = 'root'
        self.password = ''
        self.database = 'attrition'
        
    def fetch_data(self):
        # Establish connection to the MySQL database
        conn = mysql.connector.connect(
            host=self.host,
            user=self.user,
            password=self.password,
            database=self.database
        )

        # SQL query to fetch data from the Employee table
        query = "SELECT EmpID,name,email,phone FROM Employee"

        # Fetch data into a pandas DataFrame
        df = pd.read_sql(query, conn)

        # Close the database connection
        conn.close()

        return df


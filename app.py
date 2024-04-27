from df_prep import *

def main():
    st.title('Attrition Prediction App')

    uploaded_file = st.file_uploader("Upload Excel/CSV file", type=['xlsx', 'csv'])

    if uploaded_file is not None:
        df1 = pd.read_excel(uploaded_file)  
        obj = Prep()
        df = obj.prep_df(df1)
        st.write(df)
        db = EmployeeData()
        emp = db.fetch_data()

        # graphs
        bins = [18, 25, 35, 45, 55, 65]

        labels = ['18-25', '26-35', '36-45', '46-55', '55+']

        df['AgeGroup'] = pd.cut(df['Age'], bins=bins, labels=labels, right=False)
        merged_df = pd.merge(emp, df, on='EmpID', how='inner')
        #remaining_df = merged_df[merged_df['_merge'] == 'right_only']
        #remaining_df.to_excel('merged_df_2.xlsx')
        #st.write(remaining_df)
        df2 = df[df['Attrition']==1]
        #sst.write(df2)
        age_pivot_table = df2.pivot_table(index='AgeGroup', columns='Attrition', values='EmpID', aggfunc='count')
        fig, ax = plt.subplots()
        age_pivot_table.plot(kind='line', color='orange', ax=ax)
        plt.title('Age vs Emp Count')
        plt.xlabel('Age Group')
        plt.ylabel('Employee Count')
        st.pyplot(fig)


        dep= df2.pivot_table(index='Department',columns='Attrition',values='EmpID',aggfunc='count')
        fig, ax = plt.subplots()
        dep.plot(kind='bar', color='orange', ax=ax)
        plt.title('Attrition by Department')
        plt.xlabel('Department')
        plt.ylabel('Employee Count')
        st.pyplot(fig)

        EducationField= df2.pivot_table(index=['EducationField'],columns='Attrition',values='EmpID',aggfunc='count')
        fig, ax = plt.subplots()
        EducationField.plot(kind='bar', color='orange', ax=ax)
        plt.title('Attrition by EducationField')
        plt.xlabel('EducationField')
        plt.ylabel('Employee Count')

#
        EducationField= df2.pivot_table(index=['EducationField'],columns='Attrition',values='EmpID',aggfunc='count')
        fig, ax = plt.subplots()
        EducationField.plot(kind='bar', color='orange', ax=ax)
        plt.title('Attrition by EducationField')
        plt.xlabel('EducationField')
        plt.ylabel('Employee Count')
        st.pyplot(fig)

#
        EducationField= df2.pivot_table(index=['EducationField'],columns='Attrition',values='EmpID',aggfunc='count')
        fig, ax = plt.subplots()
        EducationField.plot(kind='bar', color='orange', ax=ax)
        plt.title('Attrition by EducationField')
        plt.xlabel('EducationField')
        plt.ylabel('Employee Count')
        st.pyplot(fig)
        #st.write(merged_df)
        merged_df_2 = merged_df[merged_df['Attrition']==1]                
        st.write(merged_df_2)
#        
        EducationField= df2.pivot_table(index=['EducationField'],columns='Attrition',values='EmpID',aggfunc='count')
        fig, ax = plt.subplots()
        EducationField.plot(kind='bar', color='orange', ax=ax)
        plt.title('Attrition by EducationField')
        plt.xlabel('EducationField')
        plt.ylabel('Employee Count')
        st.pyplot(fig)


if __name__ == '__main__':
    main()

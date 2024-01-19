# META Database Engineering Course
 This is the documentation of my final project
 
<details open> 
  <Summary> Overview </Summary>
  
  ## The project goals
  For this final project we were instructed to create various components of a booking system for a ficticious restaurant called Little Lemon. This project required the successful delivery of the following components:
  
    - Create a database that holds the data.
    - Connect to the database using a Python client.
    - Create a procedure using Python to react to changes in the data.
    - Connect to the database using Tableau.
    - Generate data reports using Tableau.
 
  <details>
  <summary>Learned Skills</summary>

 ## What I learned from completing this project:
  
    
    1. MySQL Workbench
      - Strategy 
        - Created a functional database schema from ER diagrams.
        - Determined the data model and ensured that data normalization was followed.
      - Implementation
        - Deployed all the tables with suitable data types and relationships.
        - Established connection to SQL server.
        - Batch imported a large amount of data into the database using SQL. *
      - Admin 
        - Added new users and set privileges using SQL terminal.
        - Reviewed, edited and tested the database as new requirements came in.
        
    2. Jupyter Notebook
      - Setting up a MySQL Python Connector.
      - Writing both Python and SQL code to communicate with the MySQL server.
        - Set up read, write, update and delete stored procedures with user inputs.
      - Quality tested to ensure a user-friendly outputs.
      
    3. Tableau
      - Load and prepare source data for analysis
      - Visualize dashboard components in worksheet format
      - Create an interactive dashboard
      
    4. git
      - Log all documents and edits for the project
      - Created branches for local instances.
      - Added, committed, pushed, and merged changes to main repository.

    5. Research
      - Spent boatloads of time troublshooting and reading comments from stackoverflow.
      - Consulted chatGPT to refine coding syntax.
    
  </details>
</details>
  
<details>
 <summary> A brief reflection </summary>
 
> What an incredible journey it has been! There were definitely many ups and downs, but overall it was an execellent opportunity to dip my toes into database engineering. I am more curious than ever by the ever expanding landscape that data occupies in current digital landscape. I look forward to continue developing my skillset as a database engineer. For my next steps, I am hoping to learn more about data warehousing and the ETL process, and to develop a 2 or 3 projects that encompasses the entire database engineering process. Last but not least, I want to give a huge shout out to the Los Angeles Public Library for providing me the access to Coursera for free. Thanks!
 
  <details>
   <summary>Challenges</summary>
   
   1. **Need more real-life applications examples** - One of the challenging aspects of this course was making sense of all the new concepts without adequate context. While it was great to see the foundational knowledge behind these concepts, it would have been nice to see examples of how these principles and processes would apply in a real-life work environment.
   2. **Better consideration to usability for learners** - Dataset repository should be made clear for all learners to access. In the final project, I found myself designing a schema that was completely unrelated to the data set. The data source was not called out from the beginning nor was it made readily avaiable. The only mentions of it were made by other frustrated learners who called out that it could be accessed in the 4th week of the module.
   3. **Things that I wished the course had covered:**  
   - It would have also been nice to see/ learn about best practices when uploading large amounts of batch data. I cobbled together solutions from the web but I was hoping to learn best practices for the process from the course.
   - Deeper dive into data warehouse, datalakes.
   - What are some key aspects necessary to be an effective DB admin.

  </details>
  
  <details>
   <summary>Highlights</summary>

   1. **Good pacing for learning material** - I have tried to learn python before, but without a direct application for applying the concepts it was definitely way more difficult to wrap my head around. I appreciated the course building up these concepts in a linear manner and showcased how the two learned languages could be interwined.
   2. **Discussion forums were helpful** - I did find a lot of helpful user-engagement in the discussion channels, especially for portion around learning to code for Python. It was also comforting to know that there were others that took part in the learning journey.
  </details>
</details>

<details open>
 <summary> Project Process </summary>
 
 ## This was my process
 ### Developing an ER diagram
 
  ![LittleLemon_ERDiagram](https://github.com/Zh3nwx/db-capstone-project/assets/137427645/902d157d-401d-4716-9fa1-480711305f4f)

 ### Batch uploading data from Little Lemon Dataset
 > I talked a little bit about this in my reflection on challenges, but I really did wish this course demonstrated what the best practice for uploading their dataset into the database would be.

 After I had completed the database schema to match the dataset, I broke the dataset down into individual csv files that correlated with each of the tables in the schema. They are linked in the table below.
 
 _Please note: if you want to replicate this process, you must ensure that your schema reflects the same naming convention and schema setup._
 
 | Folder | File Source | Description |
 | --- | --- | --- |
 | Data Files | (https://github.com/Zh3nwx/db-capstone-project/tree/main/Data) | This is where you will find the dataset broken up into CSV files by the table.|
 | Data Operations | (https://github.com/Zh3nwx/db-capstone-project/tree/main/DataOperations) | There is a [pre-requisite](https://github.com/Zh3nwx/db-capstone-project/tree/main/DataOperations/Pre-requisite) step you need to take before you can batch upload content. Once completed, you can use the provided SQL code to upload all of the CSV files into your database. Double check to make sure all the naming conventions are aligned, otherwise you will run into an error. |

 ### Validating data and Creating stored procedures

 Once the data is uploaded into the server, I was able to validate it by querying it within MySQL Workbench.
 
 ![Screenshot 2024-01-12 at 11 28 15 AM](https://github.com/Zh3nwx/db-capstone-project/assets/137427645/70f352e4-4065-488c-95e8-d1527efff2ef)

 Next, I created all of the subsequent [stored procedures](https://github.com/Zh3nwx/db-capstone-project/tree/main/StoredProcedures) per project requirements.
 
 <img width="1322" alt="Screenshot 2024-01-12 at 11 35 24 AM" src="https://github.com/Zh3nwx/db-capstone-project/assets/137427645/cc36a8e1-4191-4cee-b3cc-f63fa57bd5ee">

### Building out a Python Interface using MySQL Python Connector via Jupyter Notebook
 Once I tested all of the code, I then moved onto logging it in my [Jupyter Notebook file](https://github.com/Zh3nwx/db-capstone-project/blob/main/JupyterNotebook/LittleLemonDB.ipynb). 
 
 **I took this opportunity to explore and troubleshoot the MySQL Python connector**
 1. I kept running into an issue where I would error "Unread results" when using cursor.many() function. This was resolved by using a buffered=True cursor object. Phew.
 2. I wanted to make the experience a bit more dynamic so I added in user-input prompts that would populate the variables for the stored procedures. This made testing the stored procedures more efficient and I figured this is probably more feasible in a real-life application.
 
![Screenshot 2024-01-12 at 11 50 19 AM](https://github.com/Zh3nwx/db-capstone-project/assets/137427645/8bf23d3e-3ec9-4506-a47c-fdbdfe25bd20)


### Last but not least, I utilize Tableau to visualize the Little Lemon Dataset
I have heard of Tableau but never used it, so this was a great opportunity to explore and use a new tool. I am most familiar with Google Looker, formerly Google Data Studios, but I did find the UI in Tableau to be way more streamlined. The building process was way easier to replicate once I built my first dashboard. You can find all of the [visualizations here](https://github.com/Zh3nwx/db-capstone-project/tree/main/Visualizations)

![CustomerSalesDashboard](https://github.com/Zh3nwx/db-capstone-project/assets/137427645/ba177175-9d64-445e-8571-c7405116cba9)

</details>

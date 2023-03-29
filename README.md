# i200862_0809_Assignment_2_DB
#ERD

![A2_ERD (1)](https://user-images.githubusercontent.com/113238110/228567495-3475b051-e5a6-4c15-9d8f-9a3ec88217de.png)


-------------------------------------------------------------------------------------------------------------------------------------------------------------
#Queries_Output

![Screenshot (97)](https://user-images.githubusercontent.com/113238110/228567855-4a0a90aa-bf65-4937-b7cb-3b14b2d66f1e.png)

Explanation:This means that all rows from the AIRPLANE table will be included in the result set, and any matching rows from the PLANE_SERVICE table will also be included. If there are no matching rows in the PLANE_SERVICE table, the columns from that table will be NULL in the result set.

--------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query4](https://user-images.githubusercontent.com/113238110/228276738-e54d0625-334e-48cd-acec-cfbb41f88cf5.png)

Explanation:The INNER JOIN clauses are used to join these tables together based on their relationships, using the Reg and OWNER_ID columns as the keys for joining the AIRPLANE and OWNS tables, and the OF_TYPE and MODEL_NO columns as the keys for joining the AIRPLANE and PLANE_TYPE tables.

-------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query5](https://user-images.githubusercontent.com/113238110/228276756-bc2ef2be-6e38-4793-9ff4-3bb109acb4fe.png)

Explanation:The SELECT statement calculates the average salary of employees who work the night shift and renames the result column as avg_night_shift_salary.
The AVG function is used to calculate the average salary of the selected employees.
The FROM clause specifies the table involved in the query, which is EMPLOYEE.
The WHERE clause is used to filter the results to only include employees who work the night shift, which is defined as employees whose SHIFT_ column is greater than or equal to 22:00:00 (10:00 PM) or less than or equal to 06:00:00 (6:00 AM).


-----------------------------------------------------------------------------------------------------------------------------------------------------------

![Query6](https://user-images.githubusercontent.com/113238110/228276769-06c4cf72-d7f5-4660-93ec-bea8e8c31a4d.png)

Explanation:The INNER JOIN clauses are used to join these tables together based on their relationships, using the SSN column as the key for joining the EMPLOYEE and MAINTAIN tables, and the S_ID column as the key for joining the MAINTAIN and SERVICE_ tables.


----------------------------------------------------------------------------------------------------------------------------------------------------------

![Query7](https://user-images.githubusercontent.com/113238110/228276777-e6f901cb-9166-4aae-b2e1-64a0ba6002eb.png)

Explanation:The INNER JOIN clauses are used to join the AIRPLANE, PLANE_SERVICE, and SERVICE_ tables together based on their relationships, using the REG column as the key for joining the AIRPLANE and PLANE_SERVICE tables, and the S_ID column as the key for joining the PLANE_SERVICE and SERVICE_ tables.

-----------------------------------------------------------------------------------------------------------------------------------------------------------


![Query8](https://user-images.githubusercontent.com/113238110/228276786-57a9acd6-9148-4625-adc1-7cdbf10efc43.png)

Explanation:he first INNER JOIN clause joins the OWNER_ table with a subquery that selects the registration number of airplanes that have been purchased within the last month. This is done by joining the OWNS table with the subquery using the REG column as the key for joining the two tables, and filtering the results to only include purchases made within the last month using the WHERE clause.
The LEFT JOIN clauses are used to join the OWNER_ table with the PERSON and CORPORATION tables based on their relationships and owner types. If the owner is a person, their name and phone number are retrieved from the PERSON table using the SSN column as the key for joining the two tables. If the owner is a corporation, their name and phone number are retrieved from the CORPORATION table using the CORP_ID column as the key for joining the two tables. The CASE statements in the SELECT clause are used to select the appropriate name and phone number based on the owner type.
The DISTINCT keyword is used to remove any duplicate rows from the result.
----------------------------------------------------------------------------------------------------------------------------------------------------------


![Query9](https://user-images.githubusercontent.com/113238110/228276794-15b27141-830c-409d-8e47-ba1151f61fb7.png)

Explanation:The COUNT(DISTINCT MODEL_NO) function is used to count the number of distinct airplane models that a pilot is authorized to fly.
The FROM clause specifies the table involved in the query, which are PILOT and FLIES.
The JOIN clause is used to join the PILOT table with the FLIES table using the LIC_NUM column as the key for joining the two tables. This allows us to retrieve the list of airplanes that each pilot is authorized to fly.
The GROUP BY clause is used to group the result set by pilot's license number. This means that we will get one row per pilot's license number in the final result set, and the number of authorized airplanes will be calculated for each individual pilot.
------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query10](https://user-images.githubusercontent.com/113238110/228276807-bc3043af-bc0c-4762-8fe5-818aa26c3d44.png)

Explanation:The LEFT JOIN clause is used to join the HANGAR table with the AIRPLANE table using the STORED_IN column as the key for joining the two tables. This allows us to include only those hangars that currently store at least one airplane.
The ORDER BY clause is used to sort the result set by capacity in descending order. This means that the hangars with the largest capacity will appear at the top of the result set.
The TOP 1 clause is used to limit the result set to only the first row, which is the largest hangar.
---------------------------------------------------------------------------------------------------------------------------------------------------------


![Query11](https://user-images.githubusercontent.com/113238110/228276816-21d7aa3e-c11a-4d5f-b2a5-7ace1e0ba513.png)

Explanation:The first LEFT JOIN clause is used to join the OWNER_ table with the CORPORATION table using the OWNER_ID column as the key for joining the two tables. This allows us to include all corporations, even if they do not own any planes.
The second LEFT JOIN clause is used to join the OWNS table with the OWNER_ table using the OWNER_ID column as the key for joining the two tables. This allows us to count the number of planes owned by each corporation.
The GROUP BY clause is used to group the result set by CORP_NAME, which allows us to apply the aggregate function COUNT() to each group of corporations.
The ORDER BY clause is used to sort the result set by the num_planes_owned column in descending order. This means that the corporations with the largest number of planes owned will appear at the top of the result set.
-------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query12](https://user-images.githubusercontent.com/113238110/228276822-8a8dd6b9-d022-415a-b1c3-18ad290211af.png)

Explanation:
The JOIN clause is used twice to join the AIRPLANE table to the PLANE_SERVICE table and the PLANE_SERVICE table to the SERVICE_ table, respectively.
The ON clause specifies the join condition between the tables, based on the REG column of the AIRPLANE table and the REG column of the PLANE_SERVICE table, and the S_ID column of the PLANE_SERVICE table and the S_ID column of the SERVICE_ table.
The GROUP BY clause groups the results by the OF_TYPE column of the AIRPLANE table.
--------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query13](https://user-images.githubusercontent.com/113238110/228276828-b3c582af-a2b4-4dfc-8898-93318c6c3863.png)

Explanation:he SELECT clause selects a distinct list of owner names, based on whether the owner is a person or a corporation. The OwnerName column is created using a CASE statement that checks the OWNER_TYPE column of the OWNER_ table, and if it is 'Person', retrieves the name of the person from the PERSON table, using the OWNER_ID column of the OWNER_ table as the SSN key. If the OWNER_TYPE is 'Corp', it retrieves the corporation name from the CORPORATION table, using the OWNER_ID column of the OWNER_ table as the CORP_ID key.
The JOIN clause joins multiple tables to retrieve the relevant data.
----------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query14](https://user-images.githubusercontent.com/113238110/228276838-60b5d887-fc4d-4a90-a3de-1bc53db5ccca.png)

Explanation:he SELECT clause selects a distinct list of owner names, based on whether the owner is a person or a corporation. The OwnerName column is created using a CASE statement that checks the OWNER_TYPE column of the OWNER_ table, and if it is 'Person', retrieves the name of the person from the PERSON table, using the OWNER_ID column of the OWNER_ table as the SSN key. If the OWNER_TYPE is 'Corp', it retrieves the corporation name from the CORPORATION table, using the OWNER_ID column of the OWNER_ table as the CORP_ID key.
The JOIN clause joins multiple tables to retrieve the relevant data.
The WHERE clause filters the results based on the condition that the employee who maintained the airplane has also worked on a different model of airplane. This is achieved by comparing the MODEL_NO column of the PLANE_TYPE table for the current airplane with the MODEL_NO column of the WORKS_ON table for the employee, and checking that they are not equal.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query15](https://user-images.githubusercontent.com/113238110/228276847-531d3c8e-5489-4af0-98b9-76c5ec7098ec.png)

Explanation:The INNER JOIN clause is used multiple times to join the PERSON, FLIES, and WORKS_ON tables, to retrieve the relevant data based on their common columns. Specifically, the JOIN condition is set to match the pilot's SSN with the person's SSN, the pilot's license number with the flies' license number, and the airplane model number with the works on model number.
The WHERE clause filters the results based on the condition that the person is a pilot and has flown at least one airplane that they also worked on. This is achieved by checking that the pilot's license number is present in the FLIES table, and that the airplane model number is present in the WORKS_ON table.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query16](https://user-images.githubusercontent.com/113238110/228276853-f855faf3-d6fd-4341-9182-5cf1b3377b21.png)

Explanation:The INNER JOIN clause is used multiple times to join the PERSON, MAINTAIN, PLANE_SERVICE, SERVICE_, AIRPLANE, OWNS, and CORPORATION tables, to retrieve the relevant data based on their common columns. Specifically, the JOIN condition is set to match the employee's SSN with the person's SSN, the maintenance SSN with the employee's SSN, the maintenance service ID with the plane service ID, the plane service registration with the airplane registration, the airplane registration with the owner registration, and the owner ID with the corporation ID.

------------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query17](https://user-images.githubusercontent.com/113238110/228276861-38507dcc-ca10-4e19-840d-333169c4835c.png)

Explanation:The INNER JOIN clause is used to join the AIRPLANE and PLANE_TYPE tables based on the OF_TYPE column, to retrieve the model number for each airplane.
The LEFT JOIN clause is used multiple times to join the OWNS, EMPLOYEE, MAINTAIN, and SERVICE_ tables, to retrieve information about ownership, employee data, maintenance, and service data for the airplanes.
---------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query18](https://user-images.githubusercontent.com/113238110/228276864-86fe6a2f-736e-4011-a161-82b7e6d75808.png)

Explanation:The WHERE clause filters the results by selecting only individuals as owners and corporations who have owned an airplane of the same type within the last month. This is achieved by comparing the P_DATE column of the OWNS table for the corporation with the current date, and checking if it is within the last month using the DATEADD function.
The DISTINCT keyword is used to remove any duplicates from the result set.
--------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query19](https://user-images.githubusercontent.com/113238110/228276873-a82ee815-cee3-4da7-be77-636a5c96111c.png)


Explanation: This query assumes that there are two tables: Hangars and HangarPlanes. The Hangars table contains information about each hangar, including a unique HangarID and the HangarName. The HangarPlanes table is a many-to-many join table that links planes to their respective hangars. It has two columns: PlaneID and HangarID. This query uses a LEFT JOIN to include all hangars, even if they don't have any planes stored in them yet. The COUNT function is used to count the number of planes for each hangar, and the GROUP BY clause groups the results by hangar number. The resulting output will show the number of planes stored in each hangar, including hangars with 0 planes.

------------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query20](https://user-images.githubusercontent.com/113238110/228276883-47e0af51-2317-4967-9da9-a4bd7dd3534c.png)

Explanation:include all plane models, even if there are no planes for a certain model.
The GROUP BY clause is used to group the result set by MODEL_NO, which allows us to apply the aggregate function COUNT() to each group of planes based on their model.
The COUNT(A.Reg) function counts the number of planes for each model based on the number of rows in the Airplane table with a matching OF_TYPE value in the Plane_Type table.
---------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query21](https://user-images.githubusercontent.com/113238110/228276889-ed2e411a-409b-41ec-b762-054814a0b792.png)

Explanation:he LEFT JOIN clause is used to join the Plane_Service table with the Airplane table using the REG column as the key for joining the two tables. This ensures that we include all airplanes, even if an airplane has no services performed.
The GROUP BY clause is used to group the result set by Reg, which allows us to apply the aggregate function COUNT() to each group of services based on their airplane registration number.
The COUNT(PS.PS_ID) function counts the number of services performed on each airplane based on the number of rows in the Plane_Service table with a matching REG value in the Airplane table.
---------------------------------------------------------------------------------------------------------------------------------------------------------------


![Query22](https://user-images.githubusercontent.com/113238110/228276901-f5048457-f58f-4e30-8a16-7cea47a1a283.png)

Explanation:This will group the employees by their shift and calculate the average salary of employees in each shift. The result will include two columns: SHIFT_ and AVG_SALARY. The SHIFT_ column will contain the shift name, and the AVG_SALARY column will contain the average salary of employees in that shift.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query23](https://user-images.githubusercontent.com/113238110/228276910-233a0048-9e7f-43fa-8656-9d08cb3b049c.png)

Explanation:In this query, we join the OWNER_ table with the AIRPLANE table on the OWNER_ID column of OWNER_ and the OWNED_BY column of AIRPLANE. We then group the results by OWNER_ID and count the number of planes each owner owns using the COUNT(*) function. The result will show the OWNER_ID and the total number of planes each owner owns.

------------------------------------------------------------------------------------------------------------------------------------------------------------------

![Query24](https://user-images.githubusercontent.com/113238110/228276913-d667534b-4956-4712-93b3-ba5784e21e54.png)

Explanation:This query first joins the PILOT and FLIES tables on the license number column and then joins the AIRPLANE table on the airplane type column. It then groups the result by the pilot's license number and counts the number of planes authorized for each pilot.

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--4-Different Queries

![Query25 (4)](https://user-images.githubusercontent.com/113238110/228276917-b39fafa5-eaa0-4bb3-bd49-03a21f184d74.png)

Explanation: All the information about airplanes stored in a specific hangar.
User might be interested to find information about airplanes stored in a specific hangar because the might 
be interested in booking a flight in a particular location.


![Query25 (5)](https://user-images.githubusercontent.com/113238110/228276927-ad0984c8-c005-424e-bd5e-3165e1f83f63.png)

Explanation:Write all information about an owner who have purchase an airplane of a specific type
User might be interested in seeing the information about owners who have a preference for a specific type. 
This query can be extended to see how popular each type is


![Query25 (6)](https://user-images.githubusercontent.com/113238110/228276935-e04c7157-95a4-453b-8718-e0289d8f1c59.png)

Explanation:Names of Employees who are not allowed to work on the plane of a specific model.
User might be interested to find details about employees who cannot work on the plane of specific model.

![Screenshot (96)](https://user-images.githubusercontent.com/113238110/228564905-6a59a418-1038-465d-8d60-cfa1e9e449bb.png)
Explanation:
Write the names of all the pilots who have flown airplanes in the last month 
User might be interested in seeing all the pilots who were active the last month 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------




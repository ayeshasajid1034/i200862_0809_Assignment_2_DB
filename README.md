# i200862_0809_Assignment_2_DB
#ERD

![A2_ERD (1)](https://user-images.githubusercontent.com/113238110/228567495-3475b051-e5a6-4c15-9d8f-9a3ec88217de.png)



#Queries_Output

![Query4](https://user-images.githubusercontent.com/113238110/228276738-e54d0625-334e-48cd-acec-cfbb41f88cf5.png)
![Query5](https://user-images.githubusercontent.com/113238110/228276756-bc2ef2be-6e38-4793-9ff4-3bb109acb4fe.png)
![Query6](https://user-images.githubusercontent.com/113238110/228276769-06c4cf72-d7f5-4660-93ec-bea8e8c31a4d.png)
![Query7](https://user-images.githubusercontent.com/113238110/228276777-e6f901cb-9166-4aae-b2e1-64a0ba6002eb.png)
![Query8](https://user-images.githubusercontent.com/113238110/228276786-57a9acd6-9148-4625-adc1-7cdbf10efc43.png)
![Query9](https://user-images.githubusercontent.com/113238110/228276794-15b27141-830c-409d-8e47-ba1151f61fb7.png)
![Query10](https://user-images.githubusercontent.com/113238110/228276807-bc3043af-bc0c-4762-8fe5-818aa26c3d44.png)
![Query11](https://user-images.githubusercontent.com/113238110/228276816-21d7aa3e-c11a-4d5f-b2a5-7ace1e0ba513.png)
![Query12](https://user-images.githubusercontent.com/113238110/228276822-8a8dd6b9-d022-415a-b1c3-18ad290211af.png)
![Query13](https://user-images.githubusercontent.com/113238110/228276828-b3c582af-a2b4-4dfc-8898-93318c6c3863.png)
![Query14](https://user-images.githubusercontent.com/113238110/228276838-60b5d887-fc4d-4a90-a3de-1bc53db5ccca.png)
![Query15](https://user-images.githubusercontent.com/113238110/228276847-531d3c8e-5489-4af0-98b9-76c5ec7098ec.png)
![Query16](https://user-images.githubusercontent.com/113238110/228276853-f855faf3-d6fd-4341-9182-5cf1b3377b21.png)
![Query17](https://user-images.githubusercontent.com/113238110/228276861-38507dcc-ca10-4e19-840d-333169c4835c.png)
![Query18](https://user-images.githubusercontent.com/113238110/228276864-86fe6a2f-736e-4011-a161-82b7e6d75808.png)
![Query19](https://user-images.githubusercontent.com/113238110/228276873-a82ee815-cee3-4da7-be77-636a5c96111c.png)
Explanation: This query assumes that there are two tables: Hangars and HangarPlanes. The Hangars table contains information about each hangar, including a unique HangarID and the HangarName. The HangarPlanes table is a many-to-many join table that links planes to their respective hangars. It has two columns: PlaneID and HangarID. This query uses a LEFT JOIN to include all hangars, even if they don't have any planes stored in them yet. The COUNT function is used to count the number of planes for each hangar, and the GROUP BY clause groups the results by hangar number. The resulting output will show the number of planes stored in each hangar, including hangars with 0 planes.



![Query20](https://user-images.githubusercontent.com/113238110/228276883-47e0af51-2317-4967-9da9-a4bd7dd3534c.png)
![Query21](https://user-images.githubusercontent.com/113238110/228276889-ed2e411a-409b-41ec-b762-054814a0b792.png)
![Query22](https://user-images.githubusercontent.com/113238110/228276901-f5048457-f58f-4e30-8a16-7cea47a1a283.png)
Explanation:This will group the employees by their shift and calculate the average salary of employees in each shift. The result will include two columns: SHIFT_ and AVG_SALARY. The SHIFT_ column will contain the shift name, and the AVG_SALARY column will contain the average salary of employees in that shift.


![Query23](https://user-images.githubusercontent.com/113238110/228276910-233a0048-9e7f-43fa-8656-9d08cb3b049c.png)
Explanation:In this query, we join the OWNER_ table with the AIRPLANE table on the OWNER_ID column of OWNER_ and the OWNED_BY column of AIRPLANE. We then group the results by OWNER_ID and count the number of planes each owner owns using the COUNT(*) function. The result will show the OWNER_ID and the total number of planes each owner owns.


![Query24](https://user-images.githubusercontent.com/113238110/228276913-d667534b-4956-4712-93b3-ba5784e21e54.png)
Explanation:This query first joins the PILOT and FLIES tables on the license number column and then joins the AIRPLANE table on the airplane type column. It then groups the result by the pilot's license number and counts the number of planes authorized for each pilot.


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
Write the names of all the pilots who have flown airplanes in the last month 
User might be interested in seeing all the pilots who were active the last month 






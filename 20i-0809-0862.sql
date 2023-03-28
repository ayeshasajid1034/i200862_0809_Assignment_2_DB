--ALL THE TABLES CREATION IS DONE BELOW THIS LINE

--drop table hangar
--drop table flies 
--drop table works_on
--drop table plane_service
--drop table owns
--drop table airplane
--drop table PLANE_TYPE
					
									 --DB ASSIGNMENT 2
									--20I-0809-20I-0862
									    --SECTION-E

CREATE TABLE PLANE_TYPE (
  MODEL_NO VARCHAR(50) NOT NULL PRIMARY KEY,
  CAPACITY INT NOT NULL,
  PLANE_WEIGHT FLOAT NOT NULL 
);


CREATE TABLE HANGAR (
  Number VARCHAR(50) NOT NULL PRIMARY KEY,
  Capacity INT NOT NULL,
  Location_ VARCHAR(50) NOT NULL
);


CREATE TABLE AIRPLANE (
  Reg VARCHAR(10) NOT NULL PRIMARY KEY,
  OF_TYPE VARCHAR(50) NOT NULL,
  STORED_IN VARCHAR(50) NOT NULL,
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE (MODEL_NO),
  FOREIGN KEY (STORED_IN) REFERENCES HANGAR (Number)
);


CREATE TABLE PERSON(
	SSN VARCHAR(9) NOT NULL PRIMARY KEY,
	NAME_ VARCHAR(50) NOT NULL,
	ADDRESS_ VARCHAR(100) NOT NULL,
	PHONE_NO VARCHAR(11) NOT NULL

);

CREATE TABLE CORPORATION(
	CORP_ID VARCHAR(9) PRIMARY KEY NOT NULL,
	CORP_NAME VARCHAR(50) NOT NULL,
	CORP_ADDRESS VARCHAR(100) NOT NULL,
	PHONE_NUM VARCHAR(11) NOT NULL
);

CREATE TABLE EMPLOYEE(
    SALARY FLOAT NOT NULL,
    SHIFT_ VARCHAR(50) NOT NULL,
    SSN VARCHAR(9) PRIMARY KEY NOT NULL,
    FOREIGN KEY (SSN) REFERENCES PERSON (SSN) --inherit function isn't supported
	 ON DELETE CASCADE 
);

CREATE TABLE PILOT(
	LIC_NUM VARCHAR(10) PRIMARY KEY NOT NULL,
	RESTICTIONS VARCHAR(50) NOT NULL,
	SSN VARCHAR(9) NOT NULL,
    FOREIGN KEY (SSN) REFERENCES PERSON (SSN) --inherit function isn't supported
	 ON DELETE CASCADE
);

CREATE TABLE SERVICE_
(
	S_ID INT PRIMARY KEY NOT NULL,
	DATE VARCHAR(10) NOT NULL,
	HOURS INT NOT NULL,
	WORK_CODE VARCHAR(50) NOT NULL
);

CREATE TABLE OWNER_ (
  OWNER_ID VARCHAR(9) NOT NULL PRIMARY KEY,
  OWNER_TYPE VARCHAR(10) NOT NULL,
  FOREIGN KEY (OWNER_ID) REFERENCES PERSON(SSN)
	ON DELETE CASCADE,
  FOREIGN KEY (OWNER_ID) REFERENCES CORPORATION(CORP_ID)
	ON DELETE CASCADE
);

CREATE TABLE FLIES(
	AUTH_ID VARCHAR(9) NOT NULL,
	LIC_NUM VARCHAR(10) NOT NULL,
	MODEL_NO VARCHAR(50) NOT NULL,
	FOREIGN KEY (LIC_NUM) REFERENCES PILOT(LIC_NUM)
	 ON DELETE CASCADE,
	FOREIGN KEY (MODEL_NO) REFERENCES PLANE_TYPE(MODEL_NO)
	 ON DELETE CASCADE

);

CREATE TABLE WORKS_ON 
(
	AUTH_ID VARCHAR(9) NOT NULL,
	SSN VARCHAR(9) NOT NULL,
	MODEL_NO VARCHAR(50) NOT NULL,
	FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN)
	 ON DELETE CASCADE,
	FOREIGN KEY (MODEL_NO) REFERENCES PLANE_TYPE(MODEL_NO)
	 ON DELETE CASCADE
);

CREATE TABLE OWNS
(
	OWNER_ID VARCHAR(9) NOT NULL,
	REG VARCHAR(10)  NOT NULL, 
	P_DATE VARCHAR(10) NOT NULL,
	FOREIGN KEY (OWNER_ID) REFERENCES OWNER_(OWNER_ID)
	 ON DELETE CASCADE,
	FOREIGN KEY (REG) REFERENCES AIRPLANE(REG)
	 ON DELETE CASCADE

);

CREATE TABLE MAINTAIN (

  SSN VARCHAR(9) NOT NULL,
  S_ID INT NOT NULL,
  FOREIGN KEY (SSN) REFERENCES EMPLOYEE(SSN) 
   ON DELETE CASCADE,
  FOREIGN KEY (S_ID) REFERENCES SERVICE_(S_ID) 
   ON DELETE CASCADE
);

CREATE TABLE PLANE_SERVICE
(
	PS_ID INT PRIMARY KEY NOT NULL,
	REG VARCHAR(10) NOT NULL,
	S_ID INT NOT NULL,
	FOREIGN KEY (REG) REFERENCES AIRPLANE(REG) 
     ON DELETE CASCADE,
	FOREIGN KEY (S_ID) REFERENCES SERVICE_(S_ID) 
     ON DELETE CASCADE
);

----------------------------------------------------------------
--FILLING THE TABLE WITH DUMMY VALUES 

INSERT INTO PLANE_TYPE (MODEL_NO, CAPACITY, PLANE_WEIGHT)
VALUES
('Model1', 100, 5000.0),
('Model2', 150, 7500.0),
('Model3', 200, 10000.0),
('Model4', 250, 12500.0),
('Model5', 300, 15000.0),
('Model6', 350, 17500.0),
('Model7', 400, 20000.0),
('Model8', 450, 22500.0),
('Model9', 500, 25000.0),
('Model10', 550, 27500.0),
('Model11', 600, 5000.0),
('Model12', 650, 7500.0),
('Model13', 700, 10000.0),
('Model14', 750, 12500.0),
('Model15', 800, 15000.0),
('Model16', 850, 17500.0),
('Model17', 900, 20000.0),
('Model18', 950, 22500.0),
('Model19', 220, 25000.0),
('Model20', 520, 27500.0);

-- Insert 20 rows in HANGAR table

INSERT INTO HANGAR (Number, Capacity, Location_)
VALUES
('H1', 10, 'Location1'),
('H2', 20, 'Location2'),
('H3', 30, 'Location3'),
('H4', 40, 'Location4'),
('H5', 50, 'Location5'),
('H6', 60, 'Location6'),
('H7', 70, 'Location7'),
('H8', 80, 'Location8'),
('H9', 90, 'Location9'),
('H10', 100, 'Location10'),
('H11', 110, 'Location11'),
('H12', 120, 'Location12'),
('H13', 130, 'Location13'),
('H14', 140, 'Location14'),
('H15', 150, 'Location15'),
('H16', 160, 'Location16'),
('H17', 170, 'Location17'),
('H18', 180, 'Location18'),
('H19', 190, 'Location19'),
('H20', 200, 'Location20');


-- Insert 20 rows in AIRPLANE table
INSERT INTO AIRPLANE (Reg, OF_TYPE, STORED_IN)
VALUES
('N1', 'Model1', 'H1'),
('N2', 'Model2', 'H2'),
('N3', 'Model3', 'H3'),
('N4', 'Model4', 'H4'),
('N5', 'Model5', 'H5'),
('N6', 'Model6', 'H6'),
('N7', 'Model7', 'H7'),
('N8', 'Model8', 'H8'),
('N9', 'Model9', 'H9'),
('N10', 'Model10', 'H10'),
('N11', 'Model11', 'H1'),
('N12', 'Model12', 'H2'),
('N13', 'Model13', 'H3'),
('N14', 'Model14', 'H4'),
('N15', 'Model15', 'H5'),
('N16', 'Model16', 'H6'),
('N17', 'Model17', 'H7'),
('N18', 'Model18', 'H8'),
('N19', 'Model19', 'H9'),
('N20', 'Model20', 'H10');

/*
INSERT INTO PLANE_TYPE (MODEL_NO, CAPACITY, PLANE_WEIGHT)
VALUES
('Model11', 600, 30000.0),
('Model12', 650, 32500.0),
('Model13', 700, 35000.0),
('Model14', 750, 37500.0),
('Model15', 800, 40000.0),
('Model16', 850, 42500.0),
('Model17', 900, 45000.0),
('Model18', 950, 47500.0),
('Model19', 1000, 50000.0),
('Model20', 1050, 52500.0);
*/



INSERT INTO PERSON (SSN, NAME_, ADDRESS_, PHONE_NO)
VALUES
('123456787', 'John Doe', '123 Main St, Anytown USA', '555-1234'),
('234657890', 'Jane Smith', '456 Oak Ave, Anytown USA', '555-5678'),
('345678991', 'Bob Johnson', '789 Elm St, Anytown USA', '555-9012'),
('456789062', 'Sarah Lee', '012 Pine Rd, Anytown USA', '555-3456'),
('567890193', 'Mike Davis', '345 Maple St, Anytown USA', '555-7890'),
('678401834', 'Karen Brown', '678 Cedar Ave, Anytown USA', '555-1234'),
('789022345', 'Tom Wilson', '901 Birch St, Anytown USA', '555-5678'),
('890126456', 'Mary Taylor', '234 Oak St, Anytown USA', '555-9012'),
('901534567', 'David Clark', '567 Main St, Anytown USA', '555-3456'),
('012345178', 'Lisa Adams', '890 Elm St, Anytown USA', '555-7890'),
('234557890', 'Mark Johnson', '123 Cedar Ave, Anytown USA', '555-9012'),
('345038901', 'Sara Anderson', '456 Pine Rd, Anytown USA', '555-3456'),
('459789022', 'Chris Parker', '789 Maple St, Anytown USA', '555-7890'),
('567850123', 'Jill Thomas', '012 Birch St, Anytown USA', '555-1234'),
('678401234', 'Samuel Davis', '345 Oak Ave, Anytown USA', '555-5678'),
('789062335', 'Paula Hernandez', '678 Main St, Anytown USA', '555-9012'),
('890193456', 'Jack Wilson', '901 Elm St, Anytown USA', '555-3456'),
('901139567', 'Stephanie Lee', '234 Cedar Ave, Anytown USA', '555-7890'),
('012385630', 'Alex Kim', '567 Pine Rd, Anytown USA', '555-1234');



INSERT INTO CORPORATION (CORP_ID, CORP_NAME, CORP_ADDRESS, PHONE_NUM)
VALUES
  ('CORP00001', 'Corporation 1', '123 Main St, Anytown, USA', '1234567890'),
  ('CORP00002', 'Corporation 2', '456 Elm St, Anytown, USA', '4567890123'),
  ('CORP00003', 'Corporation 3', '789 Oak St, Anytown, USA', '7890123456'),
  ('CORP00004', 'Corporation 4', '234 Maple St, Anytown, USA', '2345678901'),
  ('CORP00005', 'Corporation 5', '567 Pine St, Anytown, USA', '5678901234'),
  ('CORP00006', 'Corporation 6', '890 Cedar St, Anytown, USA', '8901234567'),
  ('CORP00007', 'Corporation 7', '345 Birch St, Anytown, USA', '3456789012'),
  ('CORP00008', 'Corporation 8', '678 Spruce St, Anytown, USA', '6789012345'),
  ('CORP00009', 'Corporation 9', '901 Willow St, Anytown, USA', '9012345678'),
  ('CORP00010', 'Corporation 10', '1234 Oak St, Anytown, USA', '1234567890');

INSERT INTO EMPLOYEE (SALARY, SHIFT_, SSN)
VALUES
  (50000.00, 'Day', '123456789'),
  (60000.00, 'Night', '234567890'),
  (70000.00, 'Day', '345678901'),
  (80000.00, 'Night', '456789012'),
  (90000.00, 'Day', '567890123'),
  (100000.00, 'Night', '678901234'),
  (110000.00, 'Day', '789012345'),
  (120000.00, 'Night', '890123456'),
  (130000.00, 'Day', '901234567'),
  (140000.00, 'Night', '012345678');

INSERT INTO PILOT (LIC_NUM, RESTICTIONS, SSN)
VALUES
  ('LIC00001', 'None', '123456789'),
  ('LIC00002', 'Glasses', '234587890'),
  ('LIC00003', 'Contacts', '345078901'),
  ('LIC00004', 'None', '456789022'),
  ('LIC00005', 'Glasses', '567820123'),
  ('LIC00006', 'Contacts', '678101234'),
  ('LIC00007', 'None', '789012335'),
  ('LIC00008', 'Glasses', '890133456'),
  ('LIC00009', 'Contacts', '901134567'),
  ('LIC00010', 'None', '012345630');

  
INSERT INTO SERVICE_ (S_ID, DATE, HOURS, WORK_CODE)
VALUES
  (1, '2022-01-01', 10, 'Code A'),
  (2, '2022-01-02', 12, 'Code B'),
  (3, '2022-01-03', 8, 'Code C'),
  (4, '2022-01-04', 9, 'Code D'),
  (5, '2022-01-05', 11, 'Code E'),
  (6, '2022-01-06', 7, 'Code F'),
  (7, '2022-01-07', 6, 'Code G'),
  (8, '2022-01-08', 5, 'Code H'),
  (9, '2022-01-09', 4, 'Code I'),
  (10, '2022-01-10', 3, 'Code J');

INSERT INTO CORPORATION (CORP_ID, CORP_NAME, CORP_ADDRESS, PHONE_NUM)
VALUES
('CORP00013', 'ABC Corp', '123 Main St, Anytown USA', '5555551111'),
('CORP00014', 'XYZ Corp', '456 Oak St, Anytown USA', '5555552222'),
('CORP00015', 'Acme Inc', '789 Maple St, Anytown USA', '5555553333'),
('CORP00016', 'Globex Corp', '321 Pine St, Anytown USA', '5555554444');

INSERT INTO CORPORATION (CORP_ID, CORP_NAME, CORP_ADDRESS, PHONE_NUM)
VALUES
('111111111', 'Initech', '654 Cedar St, Anytown USA', '5555555555'),
('222222222', 'Wayne Enterprises', '987 Elm St, Anytown USA', '5555556666'),
('333333333', 'Stark Industries', '10 Stark Tower, New York', '5555557777'),
('444444444', 'LexCorp', '123 LexCorp Tower, Metropolis', '5555558888'),
('555555555', 'Umbrella Corporation', '123 Raccoon City, USA', '5555559999'),
('666666666', 'Oscorp', '123 Oscorp Tower, New York', '5555550000');

UPDATE CORPORATION SET CORP_ID = '777777777' WHERE CORP_ID = 'CORP00013' ;
UPDATE CORPORATION SET CORP_ID = '888888888' WHERE CORP_ID = 'CORP00014' ;
UPDATE CORPORATION SET CORP_ID = '999999999' WHERE CORP_ID = 'CORP00015' ;
UPDATE CORPORATION SET CORP_ID = '000000000'WHERE CORP_ID = 'CORP00016' ;

INSERT INTO OWNER_ (OWNER_ID, OWNER_TYPE)
VALUES
  ('111111111', 'Person'),
  ('222222222', 'Person'),
  ('333333333', 'Person'),
  ('444444444', 'Person'),
  ('555555555', 'Person'),
  ('666666666', 'Person'),
  ('777777777', 'Corp'),
  ('888888888', 'Corp'),
  ('999999999', 'Corp'),
  ('000000000', 'Corp');

INSERT INTO FLIES (AUTH_ID, LIC_NUM, MODEL_NO)
VALUES
  ('123456789', 'LIC00001', 'Model1'),
  ('234567890', 'LIC00002', 'Model2'),
  ('345678901', 'LIC00003', 'Model3'),
  ('456789012', 'LIC00004', 'Model4'),
  ('567890123', 'LIC00005', 'Model5'),
  ('678901234', 'LIC00006', 'Model6'),
  ('789012345', 'LIC00007', 'Model7'),
  ('890123456', 'LIC00008', 'Model8'),
  ('901234567', 'LIC00009', 'Model9'),
  ('012345678', 'LIC00010', 'Model10');

 INSERT INTO WORKS_ON (AUTH_ID, SSN, MODEL_NO)
VALUES ('A1', '123456789', 'Model1'),
('A2', '234567890', 'Model2'),
('A3', '345678901', 'Model3'),
('A4', '456789012', 'Model4'),
('A5', '567890123', 'Model5');

INSERT INTO OWNS (OWNER_ID, REG, P_DATE)
VALUES 
('111111111', 'N1', '2022-01-01'),
('222222222', 'N2', '2021-03-15'),
('333333333', 'N3', '2023-02-28'),
('444444444', 'N4', '2022-05-12'),
('555555555', 'N5', '2023-01-19');

INSERT INTO MAINTAIN (SSN, S_ID)
VALUES 
('123456789', 1),
('234567890', 2),
('345678901', 3),
('456789012', 4),
('567890123', 5);


INSERT INTO PLANE_SERVICE (PS_ID, REG, S_ID)
VALUES 
(1, 'N6', 1),
(2, 'N1', 2),
(3, 'N3', 6),
(4, 'N4', 4),
(5, 'N9', 5);

----------------------------------------------------------------------------------------------------------------------------------------
--QUERY NO 3:
/* Write a SQL query to find the registration numbers of airplanes that have never
undergone maintenance. */

SELECT AIRPLANE.Reg
FROM AIRPLANE
LEFT JOIN MAINTAIN
ON AIRPLANE.Reg = MAINTAIN.SSN
WHERE MAINTAIN.SSN IS NULL;

SELECT AIRPLANE.Reg
FROM AIRPLANE
LEFT JOIN PLANE_SERVICE
ON AIRPLANE.Reg = PLANE_SERVICE.REG
WHERE PLANE_SERVICE.REG IS NULL;
------------------------------------------------------------------------------------------------------

--QUERY 4:
/*Write a SQL query to find the names and addresses of corporations that own airplanes
with a capacity greater than 200. */

SELECT CORPORATION.CORP_NAME, CORPORATION.CORP_ADDRESS
FROM AIRPLANE 
INNER JOIN OWNS ON AIRPLANE.Reg = OWNS.REG
INNER JOIN CORPORATION  ON OWNS.OWNER_ID = CORPORATION.CORP_ID
INNER JOIN PLANE_TYPE ON AIRPLANE.OF_TYPE = PLANE_TYPE.MODEL_NO
WHERE PLANE_TYPE.CAPACITY > 200;


--------------------------------------------------------------------------------------------------------

--QUERY 5:
/*Write a SQL query to find the average salary of employees who work the night shift
(between 10 PM and 6 AM). */

SELECT AVG(salary) as avg_night_shift_salary
FROM EMPLOYEE
WHERE SHIFT_ >= '22:00:00' OR SHIFT_ <= '06:00:00';

-----------------------------------------------------------------------------------------------------------------
--QUERY 6:
/*Write a SQL query to find the top 5 employees with the highest total number of
maintenance hours worked. */

SELECT TOP 5 EMPLOYEE.SSN, SUM(SERVICE_.HOURS) as total_maintenance_hours
FROM EMPLOYEE
INNER JOIN MAINTAIN ON EMPLOYEE.SSN = MAINTAIN.SSN
INNER JOIN SERVICE_ ON MAINTAIN.S_ID = SERVICE_.S_ID
GROUP BY EMPLOYEE.SSN
ORDER BY total_maintenance_hours DESC

----------------------------------------------------------------------------------------------------------------
--QUERY 7:
/* Write a SQL query to find the names and registration numbers of airplanes that have
undergone maintenance in the past week. */

SELECT OF_TYPE, AIRPLANE.Reg
FROM AIRPLANE
INNER JOIN PLANE_SERVICE
ON AIRPLANE.REG = PLANE_SERVICE.REG
INNER JOIN SERVICE_
ON PLANE_SERVICE.S_ID = SERVICE_.S_ID
WHERE SERVICE_.DATE >= DATEADD(day, -7, GETDATE());

--no result
------------------------------------------------------------------------------------------------------------------
--QUERY 8:
/*Write a SQL query to find the names and phone numbers of all owners who have
purchased a plane in the past month. */

--no result

-------------------------------------------------------------------------------------------------------------------------------------
--QUERY 9:
/*Write a SQL query to find the number of airplanes each pilot is authorized to fly.*/

SELECT PILOT.LIC_NUM, COUNT(DISTINCT MODEL_NO) AS num_authorized_airplanes
FROM PILOT 
JOIN FLIES  ON PILOT.LIC_NUM = FLIES.LIC_NUM
GROUP BY PILOT.LIC_NUM;

------------------------------------------------------------------------------------------------------------------------------------
--QUERY 10:
/*Write a SQL query to find the location and capacity of the hangar with the most
available space.*/

SELECT TOP 1 Location_, Capacity
FROM HANGAR
LEFT JOIN AIRPLANE ON AIRPLANE.STORED_IN = HANGAR.Number
ORDER BY Capacity DESC;
----------------------------------------------------------------------------------------------------------------
--QUERY 11:
/*Write a SQL query to find the number of planes owned by each corporation, sorted in
descending order by number of planes.*/

SELECT CORP_NAME, COUNT(o.OWNER_ID) AS num_planes_owned
FROM CORPORATION 
LEFT JOIN OWNER_ o ON o.OWNER_ID = CORP_ID
LEFT JOIN OWNS ow ON ow.OWNER_ID = o.OWNER_ID
GROUP BY CORP_NAME
ORDER BY num_planes_owned DESC;

------------------------------------------------------------------------------------------------------------------

--QUERY 12
/*Write a SQL query to find the average number of maintenance hours per plane, broken
down by plane type.*/

SELECT AIRPLANE.OF_TYPE, AVG(SERVICE_.HOURS) as avg_maintenance_hours
FROM AIRPLANE
JOIN PLANE_SERVICE ON AIRPLANE.Reg = PLANE_SERVICE.REG
JOIN SERVICE_ ON PLANE_SERVICE.S_ID = SERVICE_.S_ID
GROUP BY AIRPLANE.OF_TYPE;

------------------------------------------------------------------------------------------------------------------
--QUERY 13
/*Write a SQL query to find the names of owners who have purchased a plane that
requires maintenance work from an employee who is not qualified to work on that type
of plane.*/

SELECT DISTINCT
  CASE
    WHEN OWNER_TYPE = 'Person' THEN p.NAME_
    WHEN OWNER_TYPE = 'Corp' THEN CORP_NAME
  END AS OwnerName
FROM OWNER_ o
JOIN OWNS ow ON o.OWNER_ID = ow.OWNER_ID
JOIN AIRPLANE a ON a.REG = ow.REG
JOIN PLANE_TYPE pt ON pt.MODEL_NO = a.OF_TYPE
JOIN PLANE_SERVICE ps ON ps.REG = a.REG
JOIN SERVICE_ s ON s.S_ID = ps.S_ID
JOIN MAINTAIN m ON m.S_ID = s.S_ID
JOIN EMPLOYEE e ON e.SSN = m.SSN
JOIN WORKS_ON wo ON wo.MODEL_NO = pt.MODEL_NO AND wo.SSN = e.SSN
JOIN PERSON p ON p.SSN = o.OWNER_ID
JOIN CORPORATION c ON C.CORP_ID = o.OWNER_ID
WHERE wo.MODEL_NO <> pt.MODEL_NO



--no result
------------------------------------------------------------------------------------------------------------------------------
--QUERY 14
/*Write a SQL query to find the names and phone numbers of owners who have
purchased a plane from a corporation that has a hangar in the same location as the
owner. */

SELECT CORPORATION.CORP_NAME, CORPORATION.PHONE_NUM
FROM CORPORATION
INNER JOIN OWNS ON CORP_ID = OWNS.OWNER_ID
INNER JOIN AIRPLANE ON OWNS.REG = AIRPLANE.REG
INNER JOIN HANGAR ON HANGAR.Number = AIRPLANE.STORED_IN
WHERE CORPORATION.CORP_NAME IN (
    SELECT CORPORATION.CORP_NAME
    FROM OWNS AS ow2
    INNER JOIN AIRPLANE AS a2 ON ow2.REG = a2.REG
	INNER JOIN HANGAR ON a2.STORED_IN = HANGAR.Number
    INNER JOIN CORPORATION AS c2 ON HANGAR.Number = c2.CORP_ADDRESS
    WHERE ow2.OWNER_ID = OWNS.OWNER_ID
)

--no result

----------------------------------------------------------------------------------------------------------------------------------
--QUERY 15
/*Write a SQL query to find the names of pilots who are qualified to fly a plane that is
currently undergoing maintenance.*/

SELECT PERSON.NAME_
FROM PILOT
INNER JOIN PERSON ON PILOT.SSN = PERSON.SSN
INNER JOIN FLIES ON PILOT.LIC_NUM = FLIES.LIC_NUM
INNER JOIN WORKS_ON ON WORKS_ON.MODEL_NO = FLIES.MODEL_NO

--------------------------------------------------------------------------------------------------------------------
--QUERY 16
/*Write a SQL query to find the names of employees who have worked on planes owned
by a particular corporation, sorted by the total number of maintenance hours worked.*/

SELECT PERSON.NAME_, SUM(SERVICE_.HOURS) AS TOTAL_HOURS
FROM EMPLOYEE 
JOIN PERSON ON EMPLOYEE.SSN = PERSON.SSN
JOIN MAINTAIN ON EMPLOYEE.SSN = MAINTAIN.SSN
JOIN PLANE_SERVICE ON MAINTAIN.S_ID = PLANE_SERVICE.S_ID
JOIN SERVICE_ ON PLANE_SERVICE.S_ID = SERVICE_.S_ID
JOIN AIRPLANE ON AIRPLANE.Reg = PLANE_SERVICE.REG
JOIN OWNS ON AIRPLANE.REG = OWNS.REG
JOIN CORPORATION ON OWNS.OWNER_ID = CORPORATION.CORP_ID
WHERE CORPORATION.CORP_NAME = 'Corporation 2'
GROUP BY PERSON.NAME_
ORDER BY TOTAL_HOURS DESC;

--no result
-----------------------------------------------------------------------------------------------------------------------
--QUERY 17
/*Write a SQL query to find the names and registration numbers of airplanes that have
never been owned by a corporation or undergone maintenance work from an employee
who works the day shift.*/

SELECT DISTINCT AIRPLANE.Reg, PLANE_TYPE.MODEL_NO
FROM AIRPLANE
INNER JOIN PLANE_TYPE ON AIRPLANE.OF_TYPE = PLANE_TYPE.MODEL_NO
LEFT JOIN OWNS ON AIRPLANE.Reg = OWNS.REG
LEFT JOIN EMPLOYEE ON OWNS.OWNER_ID = EMPLOYEE.SSN 
LEFT JOIN MAINTAIN ON MAINTAIN.SSN = EMPLOYEE.SSN
LEFT JOIN SERVICE_ ON MAINTAIN.S_ID = SERVICE_.S_ID
WHERE OWNER_ID IS NULL or SHIFT_ <> 'Day';


--------------------------------------------------------------------------------------------------------------------

--QUERY 18
/*Write a SQL query to find the names and addresses of owners who have purchased a
plane from a corporation that has also purchased a plane of the same type in the past
month.*/
SELECT DISTINCT
  CASE
    WHEN OWNER_TYPE = 'Person' THEN p.NAME_
    WHEN OWNER_TYPE = 'Corp' THEN CORP_NAME
  END AS OwnerName,
  CASE
    WHEN OWNER_TYPE = 'Person' THEN p.ADDRESS_
    WHEN OWNER_TYPE = 'Corp' THEN c.CORP_ADDRESS
  END AS Addresses
FROM OWNER_ o
JOIN PERSON p ON o.OWNER_ID = p.SSN
JOIN OWNS o1 ON o.OWNER_ID = o1.OWNER_ID
JOIN AIRPLANE a ON o1.REG = a.REG
JOIN OWNS o2 ON o2.REG = a.Reg
JOIN CORPORATION c ON o2.OWNER_ID = c.CORP_ID
WHERE o2.P_DATE >= DATEADD(month, -1, GETDATE()) 
  AND o.OWNER_TYPE = 'Person'
  AND c.CORP_NAME IN (
      SELECT c1.CORP_NAME
      FROM CORPORATION c1
      JOIN OWNS o3 ON c1.CORP_ID = o3.OWNER_ID
      JOIN AIRPLANE a1 ON o3.REG = a1.REG
      WHERE a1.OF_TYPE = a.OF_TYPE
  );

  --no result
--------------------------------------------------------------------------------------------------------------------
--QUERY 19
/*Write a Query to find the total number of planes stored in each hangar.*/

SELECT H.Number AS HangarNumber, COUNT(A.Reg) AS TotalPlanes
FROM Hangar H
LEFT JOIN Airplane A
ON H.Number = A.STORED_IN
GROUP BY H.Number;
---------------------------------------------------------------------------------------------------------------------
--QUERY 20
/*Write a Query to find the total number of planes of each plane type.*/

SELECT PT.MODEL_NO, COUNT(A.Reg) AS TotalPlanes
FROM Plane_Type PT
LEFT JOIN Airplane A ON PT.MODEL_NO = A.OF_TYPE
GROUP BY PT.MODEL_NO;
--------------------------------------------------------------------------------------------------------------------
--QUERY 21:
/*Write a Query to find the total number of services performed on each plane.*/

SELECT A.Reg, COUNT(PS.PS_ID) AS TotalServices
FROM Airplane A
LEFT JOIN Plane_Service PS ON A.Reg = PS.REG
GROUP BY A.Reg;
-------------------------------------------------------------------------------------------------------------------
--QUERY 22:
/*Write a Query to find the average salary of employees in each shift. */

SELECT SHIFT_, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEE
GROUP BY SHIFT_;
-----------------------------------------------------------------------------------------------------------------
--QUERY 23:
/*Write a Query to find the total number of planes each owner owns.*/

SELECT OWNS.OWNER_ID, COUNT(*) as total_planes_owned
FROM OWNS
JOIN AIRPLANE ON OWNS.REG = AIRPLANE.Reg  
GROUP BY OWNS.OWNER_ID;
------------------------------------------------------------------------------------------------------------------
--QUERY 24:
/*Write a Query to find the number of planes each pilot is authorized to fly.*/
SELECT p.LIC_NUM, COUNT(*) as num_planes_authorized
FROM PILOT p
JOIN FLIES f ON p.LIC_NUM = f.LIC_NUM
JOIN AIRPLANE a ON f.MODEL_NO = a.OF_TYPE
GROUP BY p.LIC_NUM;

-------------------------------------------------------------------------------------------------------------------
--QUERY 25
/*Write 4 Queries Other than this and write their Importance in the Comments why do
you think they are important and where can they be used. */

/*Names of Employees who are not allowed to work on the plane of a specific model*/
/*User might be interested to find details about employees who cannot work on the plane of specific model*/
SELECT NAME_
FROM EMPLOYEE 
INNER JOIN PERSON  ON EMPLOYEE.SSN = PERSON.SSN
WHERE EMPLOYEE.SSN NOT IN (
    SELECT w.SSN
    FROM WORKS_ON w
    WHERE w.MODEL_NO = 'ModelA'
)


/*All the information about airplanes stored in a specific hangar*/
/*User might be interested to find information about airplanes stored in a specific hangar because the might 
be interested in booking a flight in a particular location*/
SELECT *
FROM AIRPLANE
WHERE STORED_IN = 'H1';


/*Write the names of all the pilots who have flown airplanes in the last month */
/*User might be interested in seeing all the pilots who were active the last month */
SELECT DISTINCT PERSON.NAME_
FROM PERSON
INNER JOIN PILOT ON PERSON.SSN = PILOT.SSN
INNER JOIN FLIES ON PILOT.LIC_NUM = FLIES.LIC_NUM
INNER JOIN AIRPLANE ON FLIES.MODEL_NO = AIRPLANE.OF_TYPE
INNER JOIN PLANE_SERVICE ON AIRPLANE.Reg = PLANE_SERVICE.REG
INNER JOIN SERVICE_ ON PLANE_SERVICE.S_ID = SERVICE_.S_ID
WHERE SERVICE_.DATE >= DATEADD(month, -1, GETDATE());

--no result

/* Write all information about an owner who have purchase an airplane of a specific type*/
/*User might be interested in seeing the information about owners who have a preference for a specific type. 
This query can be extended to see how popular each type is*/

SELECT OWNER_.*, AIRPLANE.Reg, AIRPLANE.OF_TYPE
FROM OWNER_ 
INNER JOIN OWNS ON OWNER_.OWNER_ID = OWNS.OWNER_ID
INNER JOIN AIRPLANE ON OWNS.REG = AIRPLANE.Reg AND AIRPLANE.OF_TYPE = 'Model1';

-------------------------------------------------------------------------------------------------------------------------------------------------











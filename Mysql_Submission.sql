-- Creating Database --
dropdatabase Standard_Data_KH ;
show databases ;
createdatabase Standard_Data_KH ;
use Standard_Data_KH;

-- Creating table to import data from csv file --

-- drop table Your_Career_aspiration;
createtable Your_Career_aspiration(
TimestampsTimestamp ,
Country char(50),
Zip_Code varchar(50),
Gender char(50),
Influencing_Factor varchar(200),
Higher_Education_Outside_of_India varchar(200),
Three_year_tenurity varchar(200),
Work_for_Company_with_Undefined_Mission varchar(200),
Work_for_Misaligned_Mission_Company  varchar(200),
Work_for_Non_Socially_Impactful_Company varchar(200),
Preferred_Working_Environment varchar(200),
Preferred_Employers varchar(500),
Preferred_learning_environment varchar(500),
Aspirational_job  varchar(500),
Manager_preference_regardless_of_time varchar(500),
Preferred_Work_Setup varchar(500),
Work_for_company_with_recent_layoffs varchar(500),
Seven_or_more_year_tenurity  varchar(200),
Email_address varchar(500),
Monthly_pay_anticipated_for_the_first_three_years varchar(250),
Anticipated_monthly_income_following_five_years varchar(250),
Work_for_company_with_no_remote_policy varchar (250),
Anticipated_beginning_monthly_pay varchar(250),
Preferred_Company_Type varchar(250),
work_under_abusive_manager varchar(250),
Daily_Working_Hours varchar(250),
Full_Week_Breaks_for_Work_Life_Balance varchar(250),
Factors_for_Happiness_Productivity varchar(500),
Work_Frustrations varchar(500)) ;

select*from  Your_Career_aspiration ;
selectcount(*) from Your_Career_aspiration ;

set SQL_Safe_updates =0 ;

-- Putting "NULL" in blank fields -- 

UPDATE Your_Career_aspiration set Influencing_Factor =IF(Influencing_Factor ='', NULL, Influencing_Factor),
Higher_Education_Outside_of_India =IF(Higher_Education_Outside_of_India ='', NULL, Higher_Education_Outside_of_India),
Three_year_tenurity =IF(Three_year_tenurity ='', NULL, Three_year_tenurity),
Work_for_Company_with_Undefined_Mission =IF(Work_for_Company_with_Undefined_Mission='', NULL, Work_for_Company_with_Undefined_Mission),
Work_for_Misaligned_Mission_Company =IF(Work_for_Misaligned_Mission_Company ='',NULL, Work_for_Misaligned_Mission_Company),
Work_for_Non_Socially_Impactful_Company =IF(Work_for_Non_Socially_Impactful_Company ='', 0, Work_for_Non_Socially_Impactful_Company),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='', NULL, Preferred_Working_Environment),
Preferred_Employers =IF(Preferred_Employers ='', NULL, Preferred_Employers),
Preferred_learning_environment =IF(Preferred_learning_environment ='', NULL, Preferred_learning_environment),
Aspirational_job =IF(Aspirational_job ='', NULL, Aspirational_job),
Manager_preference_regardless_of_time =IF(Manager_preference_regardless_of_time ='',NULL, Manager_preference_regardless_of_time),
Preferred_Work_Setup =IF(Preferred_Work_Setup ='',NULL, Preferred_Work_Setup),
Work_for_company_with_recent_layoffs =IF(Work_for_company_with_recent_layoffs ='', NULL, Work_for_company_with_recent_layoffs),
Seven_or_more_year_tenurity =IF(Seven_or_more_year_tenurity ='',NULL, Seven_or_more_year_tenurity),
Email_address =IF(Email_address ='', NULL, Email_address), 
Monthly_pay_anticipated_for_the_first_three_years =IF(Monthly_pay_anticipated_for_the_first_three_years ='', 0, Monthly_pay_anticipated_for_the_first_three_years),
Anticipated_monthly_income_following_five_years =IF(Anticipated_monthly_income_following_five_years ='', 0, Anticipated_monthly_income_following_five_years),
Work_for_company_with_no_remote_policy =IF(Work_for_company_with_no_remote_policy ='', NULL, Work_for_company_with_no_remote_policy),
Anticipated_beginning_monthly_pay =IF(Anticipated_beginning_monthly_pay ='', 0, Anticipated_beginning_monthly_pay),
Preferred_Company_Type =IF(Preferred_Company_Type ='', NULL, Preferred_Company_Type),
work_under_abusive_manager =IF(work_under_abusive_manager ='' ,NULL, work_under_abusive_manager),
Daily_Working_Hours =IF(Daily_Working_Hours ='', 0,  Daily_Working_Hours),
Full_Week_Breaks_for_Work_Life_Balance =IF(Full_Week_Breaks_for_Work_Life_Balance='', 0, Full_Week_Breaks_for_Work_Life_Balance),
Factors_for_Happiness_Productivity =IF(Factors_for_Happiness_Productivity ='', NULL, Factors_for_Happiness_Productivity),
Work_Frustrations =IF(Work_Frustrations ='', NULL, Work_Frustrations);

select distinct Gender from Your_Career_aspiration;

-- Field item Standardization -- 

update Your_Career_aspiration set Gender ='Other'
where gender ='Transgender';
update Your_Career_aspiration set Gender =IF(Gender ='Male', 'M',Gender),
Gender =If(Gender ='Female' , 'F', Gender);

select*from your_career_Aspiration;
select distinct Country from Your_Career_aspiration;
update Your_Career_aspiration set Country =IF(Country ='United Arab Emirates', 'UAE',Country),
Country =If(Country ='United States of America' , 'USA', Country);


select distinct Influencing_Factor from Your_Career_aspiration;
update Your_Career_aspiration set Influencing_Factor =IF(Influencing_Factor ='Influencers who had successful careers', 'Influencers',Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='My Friends' , 'Friends', Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='My Parents' , 'Parents', Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='People from my circle, but not family members' , 'Acquaintance', Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='People who have changed the world for better' , 'World Leaders', Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='Social Media like LinkedIn' , 'Social Media', Influencing_Factor),
Influencing_Factor =If(Influencing_Factor ='Social Media like LinkedIn, YouTube, Instagram' , 'Social Media', Influencing_Factor);

select distinct Higher_Education_Outside_of_India from Your_Career_aspiration;
update Your_Career_aspiration set Higher_Education_Outside_of_India =IF(Higher_Education_Outside_of_India ='No I would not be pursuing Higher Education outside of India', 'No',Higher_Education_Outside_of_India),
Higher_Education_Outside_of_India =IF(Higher_Education_Outside_of_India ='No, But if someone could bare the cost I will', 'Needs a sponsor',Higher_Education_Outside_of_India),
Higher_Education_Outside_of_India =IF(Higher_Education_Outside_of_India ='Yes, I will earn and do that', 'Yes',Higher_Education_Outside_of_India);
select*from your_career_Aspiration;


select distinct Three_year_tenurity from Your_Career_aspiration;
update Your_Career_aspiration set Three_year_tenurity =IF(Three_year_tenurity ='No way', 'No',Three_year_tenurity),
Three_year_tenurity =IF(Three_year_tenurity ='No way, 3 years with one employer is crazy', 'No',Three_year_tenurity),
Three_year_tenurity =IF(Three_year_tenurity ='Will work for 3 years or more', 'Yes',Three_year_tenurity),
Three_year_tenurity =IF(Three_year_tenurity ='This will be hard to do, but if it is the right company I would try', 'Depends on company culture',Three_year_tenurity);
select*from your_career_Aspiration;

select distinct Seven_or_more_year_tenurity from Your_Career_aspiration;
update Your_Career_aspiration set Seven_or_more_year_tenurity =IF(Seven_or_more_year_tenurity ='No way', 'No',Seven_or_more_year_tenurity),
Seven_or_more_year_tenurity =IF(Seven_or_more_year_tenurity ='This will be hard to do, but if it is the right company I would try', 'Depends on company culture',Seven_or_more_year_tenurity),
Seven_or_more_year_tenurity =IF(Seven_or_more_year_tenurity ='Will work for 7 years or more', 'Yes',Seven_or_more_year_tenurity);
select*from your_career_Aspiration;


select distinct Work_for_Company_with_Undefined_Mission from Your_Career_aspiration;
select distinct Work_for_Non_Socially_Impactful_Company from Your_Career_aspiration;
select distinct Work_for_Misaligned_Mission_Company from Your_Career_aspiration;

update your_career_aspiration set
Work_for_Misaligned_Mission_Company =IF(Work_for_Misaligned_Mission_Company ='Will NOT work for them' , 'No', Work_for_Misaligned_Mission_Company ),
Work_for_Misaligned_Mission_Company =IF(Work_for_Misaligned_Mission_Company ='Will work for them' , 'Yes', Work_for_Misaligned_Mission_Company) ;


select distinct Preferred_Working_Environment from Your_Career_aspiration;
update your_career_aspiration set
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Fully Remote with No option to visit offices' , 'Fully remote, no office visits',Preferred_Working_Environment),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Fully Remote with Options to travel as and when needed' , 'Fully remote with occasional travel',Preferred_Working_Environment),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Hybrid Working Environment with less than 15 days a month at office' , 'Hybrid work:<15 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Hybrid Working Environment with less than 10 days a month at office' , 'Hybrid work:<10 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Hybrid Working Environment with less than 3 days a month at office' , 'Hybrid work:<3 office days/month',Preferred_Working_Environment),
Preferred_Working_Environment =IF(Preferred_Working_Environment ='Hybrid Working Environment with more than 15 days a month at office' , 'Hybrid work:15+ office days/month',Preferred_Working_Environment) ;


select distinct Work_for_company_with_recent_layoffs from Your_Career_aspiration;
update Your_Career_aspiration set
Work_for_company_with_recent_layoffs =IF(Work_for_company_with_recent_layoffs ='Yes, I Understand this is gonna happen everywhere', 'concur with the facts', Work_for_company_with_recent_layoffs), 
Work_for_company_with_recent_layoffs =IF(Work_for_company_with_recent_layoffs ='I have NO other choice', 'possess no other choices', Work_for_company_with_recent_layoffs) ; 


select distinct Work_for_company_with_no_remote_policy from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Work_for_company_with_no_remote_policy =COALESCE(Work_for_company_with_no_remote_policy, 0);

select distinct Preferred_Company_Type from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Preferred_Company_Type =   IF(Preferred_Company_Type ='Startups (51 to 250 Employees)' , 'Startups' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type ='Corporations (3000+ employees)' , 'Corporations' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type ='Mid Size Companies (251 to 1000 employees)' , 'Mid Size Companies' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type ='Startups (Less than 50 empoyees)' , 'small Business' , Preferred_Company_Type),
Preferred_Company_Type =   IF(Preferred_Company_Type ='Large Companies (1001 to 3000 employees)' , 'Large Companies' , Preferred_Company_Type);

select distinct Work_Frustrations from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Work_Frustrations =   IF(Work_Frustrations ='Often a need to learn New Skills' , 'Frequent need for skill acquisition' , Work_Frustrations) ;
select*from Your_Career_aspiration ;

select distinct Preferred_Employers from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Preferred_Employers =   IF(Preferred_Employers ='Employer who rewards learning and enables that environment' , 'Employer fostering learning culture and rewards' , Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers ='Employer who pushes your limits by enabling an learning environment, and rewards you at the end' , 'Employer promotes growth through learning and rewards effort',Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers ='Employer who appreciates learning and enables that environment' ,'Employer fostering learning and growth', Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers ="Employer who pushes your limits and doesn't enables learning environment and never rewards you" , 'Employer lacking in learning opportunities and recognition',Preferred_Employers),
Preferred_Employers =   IF(Preferred_Employers ="Employers who appreciates learning but doesn't enables an learning environment" ,'Employers value learning but lack supportive environment', Preferred_Employers);

select distinct Manager_preference_regardless_of_time from Your_Career_aspiration;
UPDATE Your_Career_aspiration SET Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time ='Manager who explains what is expected, sets a goal and helps achieve it' , 'Goal-setting manager who aids achievement' , Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time ='Manager who sets goal and helps me achieve it' , 'Goal-oriented and supportive manager',Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time ='Manager who clearly describes what she/he needs' ,'Clear-Communicating Manager', Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time ="Manager who sets targets and expects me to achieve it" , 'Target-setting manager expecting achievement',Manager_preference_regardless_of_time),
Manager_preference_regardless_of_time =   IF(Manager_preference_regardless_of_time ="Manager who sets unrealistic targets" ,'Manager setting unattainable goals', Manager_preference_regardless_of_time);

-- Creating table  "Your_Career_aspiration_2" to store standardize data
--
 droptable Your_Career_aspiration_2;
createtable Your_Career_aspiration_2(
TimestampsTimestamp ,
Country char(50),
Zip_Code varchar(50),
Gender char(50),
Influencing_Factor varchar(200),
Higher_Education_Outside_of_India varchar(200),
Three_year_tenurity varchar(200),
Work_for_Company_with_Undefined_Mission varchar(200),
Work_for_Misaligned_Mission_Company  varchar(200),
Work_for_Non_Socially_Impactful_Company varchar(200),
Preferred_Working_Environment varchar(200),
Preferred_Employers varchar(500),
Preferred_learning_environment varchar(500),
Aspirational_job  varchar(500),
Manager_preference_regardless_of_time varchar(500),
Preferred_Work_Setup varchar(500),
Work_for_company_with_recent_layoffs varchar(500),
Seven_or_more_year_tenurity  varchar(200),
Email_address varchar(500),
Monthly_pay_anticipated_for_the_first_three_years varchar(250),
Anticipated_monthly_income_following_five_years varchar(250),
Work_for_company_with_no_remote_policy varchar (250),
Anticipated_beginning_monthly_pay varchar(250),
Preferred_Company_Type varchar(250),
work_under_abusive_manager varchar(250),
Daily_Working_Hours varchar(250),
Full_Week_Breaks_for_Work_Life_Balance varchar(250),
Factors_for_Happiness_Productivity varchar(500),
Work_Frustrations varchar(500)
);
-- Insert the split values from each column into the Your_Career_aspiration_2 table
INSERTINTO Your_Career_aspiration_2 (
    Timestamps,
    Country,
    Zip_Code,
    Gender,
    Influencing_Factor,
    Higher_Education_Outside_of_India,
    Three_year_tenurity,
    Work_for_Company_with_Undefined_Mission,
    Work_for_Misaligned_Mission_Company,
    Work_for_Non_Socially_Impactful_Company,
    Preferred_Working_Environment,
    Preferred_Employers,
    Preferred_learning_environment,
    Aspirational_job,
    Manager_preference_regardless_of_time,
    Preferred_Work_Setup,
    Work_for_company_with_recent_layoffs,
    Seven_or_more_year_tenurity,
    Email_address,
    Monthly_pay_anticipated_for_the_first_three_years,
    Anticipated_monthly_income_following_five_years,
    Work_for_company_with_no_remote_policy,
    Anticipated_beginning_monthly_pay,
    Preferred_Company_Type,
    work_under_abusive_manager,
    Daily_Working_Hours,
    Full_Week_Breaks_for_Work_Life_Balance,
    Factors_for_Happiness_Productivity,
    Work_Frustrations
)
SELECT
    Timestamps,
    Country,
    Zip_Code,
    Gender,
    Influencing_Factor,
    Higher_Education_Outside_of_India,
    Three_year_tenurity,
    Work_for_Company_with_Undefined_Mission,
    Work_for_Misaligned_Mission_Company,
    Work_for_Non_Socially_Impactful_Company,
    Preferred_Working_Environment,
    Preferred_Employers,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Preferred_learning_environment, ',', n.n), ',', -1) AS Preferred_learning_environment,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Aspirational_job, ',', n.n), ',', -1) AS Aspirational_job,
    Manager_preference_regardless_of_time,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Preferred_Work_Setup, ',', n.n), ',', -1) AS Preferred_Work_Setup,
    Work_for_company_with_recent_layoffs,
    Seven_or_more_year_tenurity,
    Email_address,
    Monthly_pay_anticipated_for_the_first_three_years,
    Anticipated_monthly_income_following_five_years,
    Work_for_company_with_no_remote_policy,
    Anticipated_beginning_monthly_pay,
    Preferred_Company_Type,
    work_under_abusive_manager,
    Daily_Working_Hours,
    Full_Week_Breaks_for_Work_Life_Balance,
    SUBSTRING_INDEX(SUBSTRING_INDEX(Factors_for_Happiness_Productivity, ',', n.n), ',', -1) AS Factors_for_Happiness_Productivity,
    Work_Frustrations
FROM
    Your_Career_aspiration AS ot
JOIN
-- Retrieves the count of rows in both the Your_Career_aspiration_2 and the Your_Career_aspiration table.
 -- Generate a sequence of numbers (n) based on the maximum possible number of comma-separated values
    (
        SELECT
            a.N + b.N *10+1AS n
        FROM
            (SELECT0AS N UNION ALLSELECT1UNION ALLSELECT2UNION ALLSELECT3UNION ALLSELECT4UNION ALLSELECT5UNION ALLSELECT6UNION ALLSELECT7UNION ALLSELECT8UNION ALLSELECT9) AS a
        CROSSJOIN
            (SELECT0AS N UNION ALLSELECT1UNION ALLSELECT2UNION ALLSELECT3UNION ALLSELECT4UNION ALLSELECT5UNION ALLSELECT6UNION ALLSELECT7UNION ALLSELECT8UNION ALLSELECT9) AS b
    ) AS n
    ON
     -- Split the comma-separated values and insert them into separate rows
        CHAR_LENGTH(Preferred_learning_environment) - CHAR_LENGTH(REPLACE(Preferred_learning_environment, ',', '')) >= n.n -1or
        CHAR_LENGTH(Aspirational_job) - CHAR_LENGTH(REPLACE(Aspirational_job, ',', '')) >= n.n -1or
        CHAR_LENGTH(Preferred_Work_Setup) - CHAR_LENGTH(REPLACE(Preferred_Work_Setup, ',', '')) >= n.n -1OR
        CHAR_LENGTH(Factors_for_Happiness_Productivity) - CHAR_LENGTH(REPLACE(Factors_for_Happiness_Productivity, ',', '')) >= n.n -1
ORDER BY
    Timestamps,  n.n;

set SQL_SAFE_UPDATES =0 ;

select distinct Preferred_learning_environment from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Preferred_learning_environment =   IF(Preferred_learning_environment ='Self Paced Learning Portals' , 'Self-paced  Learning Portals' , Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment ='Self Paced Learning Portals of the Company' , "Company's Self-Paced Learning Portals",Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment ='Instructor or Expert Learning Programs' ,'Expert-led Learning Programs', Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment ="Learning by observing others" , 'Observational Learning',Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment =" Self Purchased Course from External Platforms" ,'Purchased External Courses', Preferred_learning_environment),
Preferred_learning_environment =   IF(Preferred_learning_environment ="Trial and error by doing side projects within the company" ,'Trial and error through internal side projects', Preferred_learning_environment);
UPDATE Your_Career_aspiration_2 SET Preferred_learning_environment =   IF(Preferred_learning_environment =" Trial and error by doing side projects within the company" ,'Trial and error through internal side projects', Preferred_learning_environment);
 
select distinct Aspirational_job from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Aspirational_job =   IF(Aspirational_job =' Business Operations in any organization' ,'Business Operation' , Aspirational_job),
Aspirational_job =   IF(Aspirational_job =' Build and develop a Team', 'Team management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job ='Team managemen', 'Team management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job =' Work as a freelancer and do my thing my way', 'Freelancing and independent work', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Look deeply into Data and generate insights",'Analyze data for insights', Aspirational_job), 
Aspirational_job =   IF(Aspirational_job ="Manage and drive End-to-End Projects or Products",'Lead End-to-End Product Management', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Manage and drive End-to-End Projects or Products", 'Lead End-to-End Product Management',Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Design and Develop amazing software",'Software developer', Aspirational_job),
Aspirational_job =   IF(Aspirational_job ="Design and Creative strategy in any company",'Design and Creative Strategy Role', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Become a content Creator in some platform", 'Content creation' , Aspirational_job),
Aspirational_job =   IF(Aspirational_job ="Teaching in any of the institutes/colleges/online or offline", 'Teaching', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Teaching in any of the institutes/colleges/online or offline", 'Teaching' ,Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" An Artificial Intelligence Specialist / Talking to Robots", 'AI Specialist / Robotics Interaction', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Cyber Security/ Protection of Data and Assets", 'Cybersecurity and Data Protection',Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Work for Government / Civil Roles", 'Government or Civil Service Employment', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Manufacturing / Oil and Gas/ Construction / Hard Physical Work related",'Interest in Physical Work Industries', Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" I Want to sell things/Sales",'Sales',Aspirational_job),
Aspirational_job =   IF(Aspirational_job ="Work in a BPO setup for some well known client", 'Work in a BPO setting for a reputable client',Aspirational_job),
Aspirational_job =   IF(Aspirational_job =" Work in a BPO setup for some well known client", 'Work in a BPO setting for a reputable client',Aspirational_job);

select distinct Preferred_Work_Setup from Your_Career_aspiration_2;
UPDATE Your_Career_aspiration_2 SET Preferred_Work_Setup =   IF(Preferred_Work_Setup =' Work with 2 to 3 people in my team' , 'Team consists of 2-3 members' , Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup ='Work with 5 to 6 people in my team' , "Work with 5 to 6 people in my team",Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup =' Work with more than 10 people in my team' ,'Team consists of over 10 members', Preferred_Work_Setup),
Preferred_Work_Setup =   IF(Preferred_Work_Setup =" Work with 7 to 10 or more people in my team" , 'Work in a team of 7+ members',Preferred_Work_Setup);
UPDATE Your_Career_aspiration_2 SET Preferred_Work_Setup =   IF(Preferred_Work_Setup =' Work with 5 to 6 people in my team', "Team consists of 5 to 6 members",Preferred_Work_Setup);

select distinct Work_Frustrations from Your_Career_aspiration_2;

select*from Your_Career_aspiration ;
selectcount(*) from Your_Career_aspiration_2;
select*from Your_Career_aspiration_2 ;

dropTABLE india_pincode;
createtable India_pincode(
City varchar(70),
Area varchar(70),
Pincode int,
District varchar(70),
Statevarchar(70)
);

select*from India_pincode;
selectcount(*) from India_pincode;

-- 1. Gender distribution of respondents from India
SELECT Gender, COUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Country ='india'
GROUP BY Gender;

-- 2. Percentage of respondents from India interested in education abroad
SELECT
    (COUNT(*) *100.0) /
    (SELECTCOUNT(*) FROM Your_Career_aspiration_2 WHERE Country ='india') ASPercentage
FROM Your_Career_Aspiration
WHERE Country ='india'AND Higher_Education_Outside_of_India ='yes';


-- 3. Top 6 influences on career aspirations for respondents in India
SELECT Influencing_Factor, COUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Country ='india'
GROUP BY Influencing_Factor
ORDER BYCountDESC
LIMIT6;

-- 4. Career aspiration influences by gender in India
SELECT Gender, Influencing_Factor, COUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Country ='india'
GROUP BY Gender, Influencing_Factor
ORDER BY Gender, CountDESC;

-- 5. Percentage of respondents willing to work for a company for at least 3 years
SELECT
    (COUNT(*) *100.0) / (SELECTCOUNT(*) FROM Your_Career_aspiration) ASPercentage
FROM Your_Career_Aspiration
WHERE Three_year_tenurity ='yes';

-- 6. Respondents who prefer socially impactful companies
SELECTCOUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Work_for_Non_Socially_Impactful_Company ='yes';

-- 7. Preference for socially impactful companies by gender
SELECT Gender, COUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Work_for_Non_Socially_Impactful_Company ='yes'
GROUP BY Gender;

-- 8. Distribution of minimum expected salary in the first three years
SELECT Monthly_pay_anticipated_for_the_first_three_years, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Monthly_pay_anticipated_for_the_first_three_years
ORDER BY Monthly_pay_anticipated_for_the_first_three_years;

-- 9. Expected minimum monthly salary in hand
SELECTAVG(Monthly_pay_anticipated_for_the_first_three_years) AS Avg_Salary
FROM Your_Career_Aspiration;

-- 10. Percentage of respondents preferring remote working
SELECT
    (COUNT(*) *100.0) / (SELECTCOUNT(*) FROM Your_Career_Aspiration) ASPercentage
FROM Your_Career_Aspiration
WHERE Preferred_Working_Environment ='yes';

-- 11. Preferred Number of Daily Work Hours
SELECT Daily_Working_Hours, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Daily_Working_Hours
ORDER BY Daily_Working_Hours; 

-- 12. Common Work Frustrations Among Respondents
SELECT Work_Frustrations, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Work_Frustrations
ORDER BYCountDESC;

-- 13. Need for Work-Life Balance Interventions by Gender
SELECT Gender, COUNT(*) ASCount
FROM Your_Career_Aspiration
WHERE Full_Week_Breaks_for_Work_Life_Balance ='yes'
GROUP BY Gender;

-- 14. Respondents Willing to Work Under an Abusive Manager
SELECTCOUNT(*) AS Willing_Count, 
       (COUNT(*) *100.0) / (SELECTCOUNT(*) FROM Your_Career_Aspiration) ASPercentage
FROM Your_Career_Aspiration
WHERE work_under_abusive_manager ='yes';

-- 15. Distribution of Minimum Expected Salary After Five Years
SELECT Anticipated_monthly_income_following_five_years, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Anticipated_monthly_income_following_five_years
ORDER BY Anticipated_monthly_income_following_five_years;

-- 16. Remote Working Preferences by Gender
SELECT Gender, Preferred_Working_Environment, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Gender, Preferred_Working_Environment
ORDER BY Gender, CountDESC;

-- 17. Top Work Frustrations for Each Gender
SELECT Gender, Work_Frustrations, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Gender, Work_Frustrations
ORDER BY Gender, CountDESC;

-- 18. Factors Boosting Work Happiness and Productivity
SELECT Influencing_Factor, COUNT(*) ASCount
FROM Your_Career_Aspiration
GROUP BY Influencing_Factor
ORDER BYCountDESC;

-- 19. Percentage of Respondents Needing Sponsorship for Education Abroad
SELECT
    (COUNT(*) *100.0) / (SELECTCOUNT(*) FROM Your_Career_Aspiration) ASPercentage
FROM Your_Career_Aspiration
WHERE Higher_Education_Outside_of_India ='yes';
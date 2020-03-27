1. Git clone the repository and do npm install
2. Import HotelDB.sql file in phpmyadmin or MySQL Workbench.
3. Run node server.js
4. Login API
    HTTP method POST
    http://localhost:3000/api/login
        Body:   
        x-www-form-urlencoded
        Parameters:
        email: test@gmail.com  and 
        password: test123. 

5. Register API
    HTTP method POST
    http://localhost:3000/api/register
        Body: 
        x-www-form-urlencoded
        Parameters:
        email and password.

6. List of All Hotels in Ascending Order
    HTTP method GET
    http://localhost:3000/api/list

7. Searching Hotel with KeyWord with ascending order.
    HTTP method GET
    http://localhost:3000/api/search
        Body: 
        x-www-form-urlencoded
        Parameters:
        search: BBQ   



# JMJ ELECTRONICS eCommerce site

This is a partial build for JMJ Electronics' eCommerce site.  This version is meant
to be presented to the customer to make sure we are making what the customer wants.

Current build frontend:
    - Homepage
    - Product Selection Pages
    - Shopping Cart Framework

Current build backend:
    - SQL/Postgres API connections established
    - Database migrations built


## Demo

Project not ready for deployment.  Present project for presentation for customer.
Use local database.

## Technologies Used
    - HTML
    - CSS
    - JavaScript
    - React
        - React Bootstrap
        - React Dom
        - React Router
    - Express
    - Postgres
    - pgAdmin4
    - Visual Studio Code
    - Sequelize
    - CORS


## Install and Set-Up

## Issues/Development
    - currently using a mono-repo.  Must move to relational db to serperate product types
    - need to decide how to handle payments.  Consider using a third-party for payment handling.
    - customer login needed
    - customer db for tracking/storing customer purchases
    - development seperate front-end for owners and internal users
        - allow access for buyers to track customer trends
        - allow for product update, addition, and deletion

## API Endpoints
| HTTP Verbs | Endpoints | Action |
| --- | --- | --- |
| GET | / | view all products |
| GET | /:id | view a specific product |
| POST | / | create a new product |
| PATCH | /:id | update existing product |
| DELETE | /:id | delete a product from db |


## Changelog

see ./jmj-electronics-readme/CHANGELOG.md
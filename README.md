# E-Commerce-Project
# E-Commerce Backend Application

## Overview
This project is a simple Java Spring Boot backend application that exposes RESTful APIs to manage products in an e-commerce system.  
It was developed as part of a sample task for a Freelance Java Developer opportunity.

The application is backend-only and does not include a user interface.

---

## Tech Stack
- Java 17
- Spring Boot
- Spring Data JPA
- H2 In-Memory Database
- Maven

---

## Features
- Add a new product
- Retrieve a product by ID
- In-memory data storage
- Input validation
- RESTful API design

---

## API Endpoints

### Add Product
**POST** `/api/v1/products`
**GET** `/api/v1/products/{id}`

**Request Body**
```json
{
  "id": 1,
  "name": "Laptop",
  "description": "High performance laptop"
}

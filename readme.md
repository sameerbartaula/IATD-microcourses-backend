# Setup Instructions

This project provides the backend API for the MicroCourses platform, built with Node.js, Express, and MongoDB.

## Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/sameerbartaula/IATD-microcourses-backend.git
cd IATD-microcourses-backend
```

## Open the Project in VS Code
If you use VS Code, you can open the project directory by running:

```bash
code .
```

## Install Node.js

Ensure that Node.js is installed on your system. Download Node.js if it's not already installed. https://nodejs.org/en/download/package-manager 

## Install Project Dependencies
Install the necessary Node.js packages by running:

```bash
npm install
```
## Configure MongoDB
- If not installed/configured https://www.mongodb.com/try/download/community
- Start MongoDB on your local machine.
- Create a database named MicroCourses.
- Inside this database, create a collection named courses.

## Update MongoDB Connection String
In the file config/db.js, update the MongoDB connection string if needed:
```bash
"mongodb://localhost:27017/MicroCourses"
```
## Start the Server
To start the backend server, use:

```bash
npm start
```

#### The server should now be running at http://localhost:5050.

## Data Population and API Testing

In the `ForData` folder, you’ll find resources to populate the MongoDB database and test API endpoints:

- **dummyData.txt** – Sample data for course creation.
- **forMacCreateCourseData.sh** – Bash script for populating data on Mac/Linux systems.
- **forWindowCreateCourseData.bat** – Batch script for populating data on Windows systems.
- **MicroCourses APIs.postman_collection.json** – A Postman collection with all API endpoint details for easy testing.

Depending on your machine, use either `.sh` (Mac/Linux) or `.bat` (Windows) scripts, or import the Postman collection to quickly populate data and explore available endpoints.


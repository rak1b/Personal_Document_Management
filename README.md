
# Personal Document Management API with Django REST Framework

A personal document management system
where users can upload, download, and manage documents in different formats (pdf,
docx, txt, etc.).


# [LIVE LINK](http://pd.rak1b.xyz/api/docs/)
Visit this above url to see the live website.

Test credentials:

```
email:admin@admin.com
password:admin
```
This is a superuser account which has all permissions


# API Reference 
Base url for live : http://pd.rak1b.xyz
All data format are given in http://pd.rak1b.xyz/api/docs

- ## Account Creation

before creating account have to create a group of permissions using below api
```
  POST /api/v1/users/admin/groups/
```
Then create role
```
  POST /api/v1/users/admin/role/
```
For creating account 

```
  POST /api/v1/auth/signup/
```

Login
```
  POST /api/v1/auth/login/
```

- ## Document Management

### List Documents

```
  GET /api/v1/documents/
```

Retrieve a list of documents.

### Upload Document

```
  POST /api/v1/documents/
```

Upload a new document.

### Get Document by ID

```
  GET /api/v1/documents/{id}/
```

Retrieve information about a specific document.

### Update Document by ID

```
  PUT /api/v1/documents/{id}/
```

Update information for a specific document.

### Partially Update Document by ID

```
  PATCH /api/v1/documents/{id}/
```

Partially update information for a specific document.

### Delete Document by ID

```
  DELETE /api/v1/documents/{id}/
```

Delete a specific document.

### Download Document by ID

```
  GET /api/v1/documents/{id}/download/
```

Download a specific document.

### Share Document by ID

```
  POST /api/v1/documents/{id}/share/
```

Share a specific document.




## Structure
This project contains 5 apps
- ### Config
    This app contains all the necessary configuration
- ### Coreapp
    This app contains all the main functionalities like,custom user,authentications e.t.c
- ### Documents
    This app contains the api related to documents
- ### Userapp
    This app contains the api for authorizations of users(role,group,permissions)
- ### Utility
    This app contains the api for utilities and utility files

## Postman Collection
- This collections are in the Postman api collection folder

## Database
- Database exported in database folder

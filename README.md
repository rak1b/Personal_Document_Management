
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
```http
  POST /api/v1/users/admin/groups/
```
Then create role
```http
  POST /api/v1/users/admin/role/
```
For creating account 

```http
  POST /api/v1/auth/signup/
```

Login
```http
  POST /api/v1/auth/login/
```

- ## Document Management

### List Documents

```http
  GET /api/v1/documents/
```

Retrieve a list of documents.

### Upload Document

```http
  POST /api/v1/documents/
```

Upload a new document.

### Get Document by ID

```http
  GET /api/v1/documents/{id}/
```

Retrieve information about a specific document.

### Update Document by ID

```http
  PUT /api/v1/documents/{id}/
```

Update information for a specific document.

### Partially Update Document by ID

```http
  PATCH /api/v1/documents/{id}/
```

Partially update information for a specific document.

### Delete Document by ID

```http
  DELETE /api/v1/documents/{id}/
```

Delete a specific document.

### Download Document by ID

```http
  GET /api/v1/documents/{id}/download/
```

Download a specific document.

### Share Document by ID

```http
  POST /api/v1/documents/{id}/share/
```

Share a specific document.




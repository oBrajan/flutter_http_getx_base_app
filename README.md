# JDS API specifications

- URL preprod: https://...
- Auth: "X-JDS-Authorization" header (value to be given separately)


## GET /tvshows

Array of last 6 shows


## GET /tvshow/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": ""
}
```


## GET /masses

Array of last 6 masses


## GET /masses/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": ""
}
```

## GET /homilies

Array of last 6 homilies


## GET /homilies/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": "",
    "liturgical_year": "",
    "liturgical_day": "",
    "liturgical_time": "",
    "preacher": "",
    "city": "",
    "parish": ""
}
```


## GET /words

Array of last 6 words


## GET /words/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": ""
}
```


## GET /constances

Array of last 6 constances


## GET /constances/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": ""
}
```

## GET /songs

Array of last 6 songs


## GET /songs/{id}

```json
{
    "id": "",
    "title": "",
    "description": "",
    "thumbnail": "",
    "broadcasting_date": "",
    "video_id": ""
}
```


## GET /tutorial

Return images:

```json
[
    "image 1 URL",
    "image 2 URL",
    "image 3 URL",
    "…"
]
```

## POST /signup

- Request
    - email
    - firstname
    - lastname
    - password
- Response
    - 200
        - message
        - contact
            - id
            - firstname
            - lastname
            - email
    - 400 (Invalid parameters)
        - message
        - error
    - 409 (Contact already exists and already subscriber)
        - message
    - 500
        - message
        - error


## POST /signin

- Request
    - email
    - password
- Response
    - 200
        - message
        - contact
            - id
            - firstname
            - lastname
            - email
    - 404 (User not found, cannot login)
        - message
        - error

## GET /profile/{id}

- Response
    - 200
        - message
        - contact
            - id
            - firstname
            - lastname
            - email
            - inscrit_app_jds
    - 404
        - message
        - error


## PUT /profile/{id}

- Request
    - email
    - firstname
    - lastname
- Response
    - 200
        - message
    - 400
        - message
        - error
    - 404
        - message
        - error


## POST /lostpassword

- Request
    - email
- Response
    - 200
        - message
    - 404
        - message
        - error
    - 500
        - message
        - error


## PUT /updatepassword

- Request
    - id
    - password
- Response
    - 200
        - message
    - 400
        - message
        - error
    - 404
        - message
        - error


## POST /fbconnect

- Request
    - facebook_id
    - accessToken
- Response
    - 200
        - message
        - contact
            - id
            - email
            - firstname
            - lastname
    - 500
        - message
        - error

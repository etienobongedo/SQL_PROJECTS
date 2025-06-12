```mermaid
erDiagram
    roles ||--o{ films : featured
    people ||--o{ roles : plays
    reviews ||--o{ films : written
    films {
        int4 id PK
        varchar title
        int4 release_year
        varchar country
        int4 duration
        varchar language
        varchar certification
        int8 gross
        int8 budget
    }
    people {
        int4 id PK
        varchar name
        date birthdate
        date deathdate
    }
    reviews {
        int4 id PK
        int4 film_id FK
        int4 num_user
        int4 num_critic
        float4 imdb_score
        int4 num_votes
        int4 facebook_likes
    }
    roles {
        int4 id PK
        int4 film_id FK
        int4 person_id FK
        varchar role
    }
```

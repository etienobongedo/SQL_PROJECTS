```mermaid
erDiagram
    AUTHORS ||--o{ BOOKS : writes
    AUTHORS {
        int author_id PK
        varchar name
        text bio
    }
    BOOKS {
        int book_id PK
        varchar title
        int author_id FK
        int published_year
        numeric price
    }
```

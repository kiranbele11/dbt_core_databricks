{% docs orders %}

| Column       | Description              |
|--------------|--------------------------|
| id           | Primary Key              |
| created_at   | Record creation time     |
| user_id      | Foreign Key to Users     |
| product_id   | Foreign Key to Products  |
| quantity     | Number of items          |
| unit_price   | Price per unit           |

{% enddocs %}

{% docs products %}

| Column       | Description              |
|--------------|--------------------------|
| id           | Primary Key              |
| created_at   | Record creation time     |
| title        | Product title            |
| category     | Product category         |
| ean          | European Article Number (EAN) |
| vendor       | Product vendor           |
| price        | Product price            |

{% enddocs %}

{% docs users %}

| Column       | Description                  |
|--------------|------------------------------|
| id           | Primary Key                  |
| created_at   | Record creation time         |
| name         | Full name of the individual  |
| email        | Email address                |
| city         | City of residence            |
| state        | State of residence           |
| zip          | ZIP or postal code           |
| birth_date   | Date of birth                |
| source       | Source of data collection    |

{% enddocs %}

{% docs reviews %}

| Column       | Description                  |
|--------------|------------------------------|
| id           | Primary Key                  |
| created_at   | Record creation time         |
| reviewer     | Reviewer name or ID          |
| product_id   | Foreign Key to Products      |
| rating       | Rating given by the reviewer |
| body         | Text of the review           |

{% enddocs %}
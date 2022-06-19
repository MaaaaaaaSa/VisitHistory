## usersテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| name      | string     | null: false                    |
| phone     | string     | null: false, unique: true      |
| email     | string     | null: false, unique: true      |
| password  | string     | null: false                    |
| name_kane | tring      | null: false                    |
| area      | integer    | null: false                    |

### Association

- has_many :comments

## commentsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| comment   | text       | null: false                    |
| date_time |  |        |
| user      | refarences | null: false, foreign_key: true |
| customer  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :customer

## customersテーブル

| Column    | Type       | Options         |
| --------- | ---------- | --------------- |
| address   | text       | null: false     |

### Association

- has_many :comments

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| introduce          | text   | null: false |

### Association

- has_many :rooms
- has_many :ideas

## rooms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| theme       | string     | null: false                    |
| theme_info  | text       | null: false                    |
| user        | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_many  :ideas


## ideas テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| info    | text     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

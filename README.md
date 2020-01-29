# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# refrigerator DB設計
## usersテーブ
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
### Association
- has_many :puts

## putsテーブル
| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| image         | text       | null: false       |
| bestby_date_y | text       |                   |
| bestby_date_m | text       |                   |
| bestby_date_d | text       |                   |
| category      | integer    | null: false       |
| count         | integer    |                   |
| name          | string     | null: false       |
| memo          | string     |                   |
| user_id       | references | foreign_key: true |
### Association
- belongs_to : user


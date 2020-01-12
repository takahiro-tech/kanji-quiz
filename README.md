# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :scores



## questionsテーブル
|Column|Type|Options|
|------|----|-------|
|statement|string||
|choice1|string||
|choice2|string||
|choice3|string||
|answer|integer||
|reading|string||

## scoresテーブル
|Column|Type|Options|
|------|----|-------|
|result|text||
|questions|text||
|answer_text|text||
|user_id|references|foreign_key: true|

### Association
- belongs_to :user
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
## usersテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### association
has_many :blogs
has_many :comments

## blogsテーブル
|Column|Type|Option|
|------|----|------|
|title|sting|null: false|
|text|text|null: false|
|start_time|datetime|null: false|
|image|string|


### association
belongs_to :user
has_many :comments

## commentsテーブル
|Column|Type|Option|
|------|----|------|
|comment|text|null :false|
|uer|references|
|blog|references|

belongs_to :blog
belongs_to :user
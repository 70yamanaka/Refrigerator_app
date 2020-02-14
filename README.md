# README

## Name
「外でも冷蔵庫の中が見えるアプリ」です。

An app that allows you to see inside the refrigerator outside.

## Overview
冷蔵庫管理アプリです。

Refrigerator management app

## Description
このアプリは買い物中に冷蔵庫の中身を確認することができるアプリです。賞味期限切れや買い忘れを防ぐことができます！

This app allows you to clean the refrigerator while shopping It is an application that can be confirmed.
You can prevent the expiration date or forget to buy!

## Usage
まずtopページの左側にある新規登録ボタンからuser登録します。nickname、email、passwordを入力して保存します。するとindexページに飛びます。indexには冷蔵庫の中身がわかるように冷蔵庫、冷凍庫で肉類野菜類、etcといったようにカテゴリーで分けられ、画像、名前、消費期限が表示されています。
　次にindexの左側にある追加するボタンから冷蔵庫に入っている、又はこれから入れる一つの商品の画像、名前、個数、カテゴリー、消費期限を入力して保存します。するとindexに戻ると先ほど入力したカテゴリーのところに表示されているのが確認できます。
　保存した商品の情報を編集する場合は、indexにある編集したい商品をクリックすると、商品詳細ページに移動します。そこで商品の画像、名前、個数、カテゴリー、消費期限が表示されています。
　そしてその下には、編集するボタン、削除するボタンがあります。編集ボタンを押すと、編集ボタンを押すと、編集ページに飛び、情報を編集した後、変更するボタンを押していただくと、更新された情報がindexページに表示されます。
　商品を削除する場合は、詳細ページの下にある削除するボタンを押すと、indexページから削除した商品が表示されていないことが確認されます。

First, register the user from the new registration button on the left side of the top page. Enter nickname, email and password and save. Then it jumps to the index page. The index is divided into categories such as refrigerator, freezer, meat and vegetables, etc. so that you can see the contents of the refrigerator, and the image, name and expiration date are displayed.
Next, enter the image, name, quantity, category, expiration date of one product in or from the refrigerator from the add button on the left side of the index and save it. Then, when you return to the index, you can see that it is displayed at the category you entered earlier.
Edit To edit the information of a saved product, click on the product you want to edit in the index and you will be taken to the product details page. The product image, name, quantity, category and expiration date are displayed.
And below that, there is a button to edit and a button to delete. When you press the edit button, press the edit button to jump to the edit page, edit the information, and then press the change button to display the updated information on the index page.
To delete a product, press the delete button at the bottom of the detail page to confirm that the product deleted from the index page is not displayed.

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
| bestby_date_y | text       | null: false       |
| bestby_date_m | text       | null: false       |
| bestby_date_d | text       | null: false       |
| category      | integer    | null: false       |
| count         | integer    |                   |
| name          | string     | null: false       |
| memo          | string     |                   |
| user_id       | references | foreign_key: true |
### Association
- belongs_to : user


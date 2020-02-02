# README

## Name
冷蔵庫管理アプリ

Refrigerator management app

## Overview
外でも冷蔵庫の中が見えるアプリです。

An app that allows you to see inside the refrigerator outside.

## Description
このアプリは買い物中に冷蔵庫の中身を確認することができるアプリです。賞味期限切れや買い忘れを防ぐことができます！

This app allows you to clean the refrigerator while shopping It is an application that can be confirmed.
You can prevent the expiration date or forget to buy!

## Demo

## VS. 

## Requirement

## Usage

## Install

## Contribution

## Licence


## Author


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


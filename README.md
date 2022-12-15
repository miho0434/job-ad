## アプリケーション名
サロドア

## アプリケーション概要
ネイルサロンの働く環境に関する口コミを投稿したり、閲覧ができます。  
求職者の入社前後のギャップを少なくし、早期の離職を減らすことが目的です。

## URL
https://job-ad-38262.onrender.com/

## テスト用アカウント
・Basic認証パスワード：2222  
・Basic認証ID：admin  
・メールアドレス：aaa@aaa  
・パスワード：aaaaaa1

## 利用方法
### ・口コミ投稿
1.　トップページのヘッダーからworker登録を行う。  
2.　口コミを投稿するボタンから  各項目（雰囲気・環境・働きやすさ/得られた技術、成長できるポイント/入社前後のギャップ/福利厚生・給与など待遇面/退職した、もしくは退職しようと考えている理由）を入力し投稿する。   

### ・口コミ閲覧
サロンの一覧ページの口コミ閲覧ボタンをクリックして、各項目の詳細を確認ができる。

## アプリケーションを作成した背景
前職の同僚(ネイリスト)に困っていることをヒアリングしたところ、「人を採用してもすぐに辞めてしまう」という課題を抱えていることが判明しました。  
同様のサロンも多いと推測し、解決するために、入社前にサロンの実態が見えるようになるアプリケーションを開発することにしました。


## 洗い出した要件
https://docs.google.com/spreadsheets/d/1CTqCBGSPcrbZhO5dWUK--oXG_mf6xKqyGfKDmE9rGiY/edit#gid=982722306

## 実装した機能についての画像やGIFおよびその説明
現在作成中のため、作成完了後に加筆予定

## 実装予定の機能
未定

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/96006f435c9bf7fd3abea3780d05ad97.png)](https://gyazo.com/96006f435c9bf7fd3abea3780d05ad97)

### workersテーブル(ワーカー管理機能)

| Column             | Type       | Options                  |
| ----------------   | --------   | ------------             |
| email              | string     | null: false ,unique: true|
| encrypted_password | string     | null: false              |
| nickname           | string     | null: false              |

### Association
has_many :comments

===========================================================
### commentsテーブル(口コミ管理機能)

| Column                | Type       | Options                        |
| -------------------   | --------   | -----------------              |
| atmosphere            | text       |                                |
| growth_potential      | text       |                                |
| gap                   | text       |                                |
| treatment             | text       |                                |
| reason_for_retirement | text       |                                |
| user                  | references | null: false ,foreign_key: true |
| salon                 | references | null: false ,foreign_key: true |

#### Asociation
belongs to :user
belongs to :salon


===========================================================
### salonsテーブル(サロン管理機能)

| Column              | Type       | Options                  |
| ----------------    | --------   | ------------             |
| email               | string     | null: false ,unique: true|
| encrypted_password  | string     | null: false              |
| store_name          | string     | null: false              |
| corporate_name      | string     | null: false              |
| postal_code         | string     | null: false              |
| prefecture_id       | integer    | null: false              |
| city                | string     | null: false              |
| street_number       | string     | null: false              |
| building_name       | string     |                          |
| established         | date       | null: false              |
| offices             | integer    | null: false              |

#### Association
has_many :comments
has_many :job_information

===========================================================
### job_informationテーブル(求人票管理機能)

| Column                  | Type       | Options                        |
| -------------------     | --------   | -----------------              |
| ad_catch                | string     | null: false                    |
| ad_copy                 | text       | null: false                    |
| appeal_title            | string     |                                |
| appeal_text             | text       |                                |
| location                | string     | null: false                    |
| employment_status       | string     | null: false                    |
| type_of_occupation      | string     | null: false                    |
| salary                  | text       | null: false                    |
| working_hours           | text       | null: false                    |
| holiday                 | text       | null: false                    |
| treatment               | text       | null: false                    |
| training_system         | text       | null: false                    |
| ideal_person            | text       | null: false                    |
| mandatory_qualification | text       | null: false                    |
| flow_after_application  | text       | null: false                    |
| salon                   | references | null: false ,foreign_key: true |

#### Asociation
belongs to :salon

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/c7f598e473611bb1bccea46bbdede745.png)](https://gyazo.com/c7f598e473611bb1bccea46bbdede745)

## 開発環境
Ruby/Ruby on Rails/MySQL/Github/render/Visual Studio Code


## ローカルでの動作方法
以下のコマンドを順に実行  
%git clone https://github.com/miho0434/job-ad  
%cd job-ad  
%bundle install  
%yarn install  

## 工夫したポイント
より多くの口コミがないと、課題解決に繋がらない機能のため、既存のサービスに追加する形で実装をしようと考えました。  
実装後に再度加筆します。

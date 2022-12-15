## workersテーブル(ワーカー管理機能)

| Column             | Type       | Options                  |
| ----------------   | --------   | ------------             |
| email              | string     | null: false ,unique: true|
| encrypted_password | string     | null: false              |
| nickname           | string     | null: false              |

### Association
has_many :comments

===========================================================
## commentsテーブル(口コミ管理機能)

| Column                | Type       | Options                        |
| -------------------   | --------   | -----------------              |
| atmosphere            | text       |                                |
| growth_potential      | text       |                                |
| gap                   | text       |                                |
| treatment             | text       |                                |
| reason_for_retirement | text       |                                |
| user                  | references | null: false ,foreign_key: true |
| salon                 | references | null: false ,foreign_key: true |

### Asociation
belongs to :user
belongs to :salon


===========================================================
## salonsテーブル(サロン管理機能)

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

### Association
has_many :comments
has_many :job_information

===========================================================
## job_informationテーブル(サロン管理機能)

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

### Asociation
belongs to :salon

class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.timestamps

      t.string :title,           null: false
      t.text   :catch_copy,      null: false
      t.text   :concept,         null: false
      t.references   :user, foreign_key: true
      
      # | Column     | Type         | Options     |
      # | ---------- | ------------ | ----------- |
      # | title      | string       | null: false |
      # | catch_copy | text         | null: false |
      # | concept    | text         | null: false |
      # | image      |              |             |
      # | user       | references   |             |      
    end
  end
end

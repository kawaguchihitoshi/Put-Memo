class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string       :image
      t.text         :title,     null: false
      t.text         :text,      null: false
      t.integer      :user_id,   null: false, foreign_key: true
      t.timestamps
    end
  end
end

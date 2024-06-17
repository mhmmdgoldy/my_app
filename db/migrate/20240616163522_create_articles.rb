class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps # created_at, updated_at berupa datetime
    end
  end
end

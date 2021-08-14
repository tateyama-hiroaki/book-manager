class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.string :genre
      t.string :image
      t.references :user, nill: false, foreign_key: true

      t.timestamps
    end
    add_index :books, [:user_id, :created_at]
  end
end

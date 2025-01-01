class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.integer :parent_comment_id, index: true

      t.timestamps
    end

    add_foreign_key :comments, :comments, column: :parent_comment_id
  end
end

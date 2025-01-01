class AddTypeToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :type, :string
  end
end

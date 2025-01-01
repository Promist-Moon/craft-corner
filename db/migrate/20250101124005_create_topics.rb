class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :topic
      t.text :description

      t.timestamps
    end
  end
end
class CreateStickies < ActiveRecord::Migration[5.2]
  def change
    create_table :stickies do |t|
      t.text :body
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

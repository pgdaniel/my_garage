class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.integer :item_id
      t.references :followable, polymorphic: true

      t.timestamps
    end
  end
end

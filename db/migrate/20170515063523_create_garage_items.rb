class CreateGarageItems < ActiveRecord::Migration[5.1]
  def change
    create_table :garage_items do |t|
      t.references :garage, foreign_key: true
      t.references :generic_image, foreign_key: true

      t.timestamps
    end
  end
end

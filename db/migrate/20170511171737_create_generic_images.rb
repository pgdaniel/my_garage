class CreateGenericImages < ActiveRecord::Migration[5.1]
  def change
    create_table :generic_images do |t|
      t.string :image

      t.timestamps
    end
  end
end

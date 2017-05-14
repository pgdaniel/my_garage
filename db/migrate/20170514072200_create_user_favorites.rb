class CreateUserFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :user_favorites do |t|
      t.references :user, foreign_key: true
      t.references :generic_image, foreign_key: true

      t.timestamps
    end
  end
end

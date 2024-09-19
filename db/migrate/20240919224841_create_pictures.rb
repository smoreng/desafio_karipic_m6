class CreatePictures < ActiveRecord::Migration[7.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

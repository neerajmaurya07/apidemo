class CreateRecognizes < ActiveRecord::Migration[5.0]
  def change
    create_table :recognizes do |t|
      t.string :secret_key
      t.string :tasks
      t.string :country
      t.string :state
      t.integer :return_image
      t.boolean :prewarp
      t.string :image

      t.timestamps
    end
  end
end

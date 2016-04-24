class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.text :description
      t.string :address
      t.string :image

      t.timestamps null: false
    end
  end
end

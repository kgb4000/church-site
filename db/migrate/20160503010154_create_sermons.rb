class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :scripture
      t.text :description

      t.timestamps null: false
    end
  end
end

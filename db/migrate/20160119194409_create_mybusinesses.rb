class CreateMybusinesses < ActiveRecord::Migration
  def change
    create_table :mybusinesses do |t|
      t.string :name
      t.string :type_of
      t.string :category
      t.string :district
      t.string :village
      t.string :contact
      t.text :description

      t.timestamps null: false
    end
  end
end

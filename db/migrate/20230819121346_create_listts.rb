class CreateListts < ActiveRecord::Migration[7.0]
  def change
    create_table :listts do |t|
      t.string :name

      t.timestamps
    end
  end
end

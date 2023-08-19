class CreateBookmarkks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarkks do |t|
      t.text :comment
      t.references :moviee, null: false, foreign_key: true
      t.references :listt, null: false, foreign_key: true

      t.timestamps
    end
  end
end

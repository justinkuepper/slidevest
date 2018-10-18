class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end

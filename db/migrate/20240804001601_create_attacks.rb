class CreateAttacks < ActiveRecord::Migration[7.2]
  def change
    create_table :attacks do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :secured_by, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end

class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :sender
      t.string :reciever
      t.string :from
      t.string :to
      t.text :contents

      t.timestamps null: false
    end
  end
end

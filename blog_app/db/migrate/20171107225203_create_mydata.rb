class CreateMydata < ActiveRecord::Migration[5.0]
  def change
    create_table :mydata do |t|
      t.string :name
      t.string :lastname

      t.timestamps
    end
  end
end

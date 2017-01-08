class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.date :birth_date
      t.string :location
      t.string :phone_number
      t.string :email
      t.text :headline
      t.string :picture

      t.timestamps
    end
  end
end

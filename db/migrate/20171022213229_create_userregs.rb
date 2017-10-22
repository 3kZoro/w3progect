class CreateUserregs < ActiveRecord::Migration[5.0]
  def change
    create_table :userregs do |t|
      t.string :FirstName
      t.string :LastName
      t.integer :Age
      t.string :Email
      t.string :City
      t.string :Password

      t.timestamps
    end
  end
end

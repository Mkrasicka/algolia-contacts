class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :address
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.string :web

      t.timestamps
    end
  end
end

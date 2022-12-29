class AddNoteToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :Note, :text
  end
end

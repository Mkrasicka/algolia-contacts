class AddFollowersToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :followers, :integer, default: 0
  end
end

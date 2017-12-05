class DeleteTableUsersProperties < ActiveRecord::Migration[5.1]
  def change
    drop_table :users_properties
  end
end

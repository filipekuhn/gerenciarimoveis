class AddNameToVisitor < ActiveRecord::Migration[5.1]
  def change
    add_column :visitors, :name, :string
  end
end

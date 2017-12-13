class CreateVisitorsProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :visitors_properties do |t|
      t.references :property, foreign_key: true
      t.references :visitor, foreign_key: true

      t.timestamps
    end
  end
end

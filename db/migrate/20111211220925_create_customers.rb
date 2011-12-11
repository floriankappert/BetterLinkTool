class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.references :keyword

      t.timestamps
    end
    add_index :customers, :keyword_id
  end
  
end

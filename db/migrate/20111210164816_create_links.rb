class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :status
      t.references :keyword

      t.timestamps
    end
    add_index :links, :keyword_id
  end
end

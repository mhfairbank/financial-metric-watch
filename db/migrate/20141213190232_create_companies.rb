class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :symbol
      t.integer :sector_id

      t.timestamps
    end
  end
end

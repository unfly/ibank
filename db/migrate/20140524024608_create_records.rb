class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :card_id
      t.decimal :money, precision: 8, scale: 2
      t.string :description

      t.timestamps
    end

		add_index :records, :card_id

  end
end

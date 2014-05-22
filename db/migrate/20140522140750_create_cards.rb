class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :num
      t.decimal :limit
      t.date :sdate
      t.date :pddate
      t.string :remark

      t.timestamps
    end
  end
end

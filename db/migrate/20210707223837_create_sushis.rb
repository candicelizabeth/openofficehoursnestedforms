class CreateSushis < ActiveRecord::Migration[6.1]
  def change
    create_table :sushis do |t|
      t.string :name
      t.belongs_to :chef, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :context
      t.string :author
      t.date :day

      t.timestamps null: false
    end
  end
end

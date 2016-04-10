class RemoveOldQuotes < ActiveRecord::Migration
  def change
	drop_table :quotes
  end
end

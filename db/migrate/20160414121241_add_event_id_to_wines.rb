class AddEventIdToWines < ActiveRecord::Migration
  def change
    add_reference :wines, :event, index: true, foreign_key: true
  end
end

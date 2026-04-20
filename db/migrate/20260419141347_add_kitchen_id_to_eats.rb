  class AddKitchenIdToEats < ActiveRecord::Migration[8.1]
  def change
    add_reference :eats, :kitchen, null: true, foreign_key: true
  end
end

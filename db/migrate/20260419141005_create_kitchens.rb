class CreateKitchens < ActiveRecord::Migration[8.1]
  def change
    create_table :kitchens do |t|
      t.string :title

      t.timestamps
    end
  end
end

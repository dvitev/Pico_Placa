class CreatePplacas < ActiveRecord::Migration[5.0]
  def change
    create_table :pplacas do |t|
      t.string :placa
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end

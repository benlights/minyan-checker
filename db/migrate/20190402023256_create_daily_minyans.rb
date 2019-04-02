class CreateDailyMinyans < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_minyans do |t|
      t.references :minyan, foreign_key: true
      t.date :date
      t.boolean :happening

      t.timestamps
    end
  end
end

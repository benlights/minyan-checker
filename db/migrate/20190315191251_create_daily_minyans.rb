class CreateDailyMinyans < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_minyans do |t|
    	t.belongs_to :minyan
    	t.time :time 
    end
  end
end

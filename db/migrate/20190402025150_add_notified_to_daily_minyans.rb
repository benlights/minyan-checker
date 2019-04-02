class AddNotifiedToDailyMinyans < ActiveRecord::Migration[5.2]
  def change
  	add_column :daily_minyans, :notified, :boolean, default: 0
  end
end

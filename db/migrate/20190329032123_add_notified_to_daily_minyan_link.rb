class AddNotifiedToDailyMinyanLink < ActiveRecord::Migration[5.2]
  def change
  	add_column :daily_minyan_links, :notified, :boolean, default: 0
  end
end

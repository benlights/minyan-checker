class CreateMinyansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :minyans do |t|
    	t.time :time
    	t.string :location
    	t.string :location
    	t.time :notification_time
    	t.timestamps
    end
  end
end

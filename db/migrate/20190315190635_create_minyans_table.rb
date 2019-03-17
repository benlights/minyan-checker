class CreateMinyansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :minyans do |t|
    	t.string :name
    	t.time :time
    	t.string :location
    	t.time :notification_time
    	t.timestamps
    end
  end
end

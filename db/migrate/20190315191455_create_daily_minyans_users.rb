class CreateDailyMinyansUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_minyans_users do |t|
    	t.integer :daily_minyan_id, foreign_key: true
    	t.integer :user_id, foreign_key: true
    	t.string :link
    	t.boolean :joining, default: 0
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content 
      t.timestamps 
    end
  end
end

class AddTimestampsToAlerts < ActiveRecord::Migration
  def change
    change_table(:alerts) do |t| 
      t.timestamps
    end
  end
end 
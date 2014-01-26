class RemoveTypeColumn < ActiveRecord::Migration
  def up

  	remove_column :posts, :type
  
  end

  def down
  end
end

class Addfieldtousers < ActiveRecord::Migration
  def up
  	add_column :users, :statistic, :string
  end

  def down
  end
end

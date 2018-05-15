class AddStatusTotasks < ActiveRecord::Migration[5.0]
  def change
    add_column :task, :content, :string
  end
end

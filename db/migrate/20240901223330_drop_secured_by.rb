class DropSecuredBy < ActiveRecord::Migration[7.2]
  def change
    remove_column :attacks, :secured_by
  end
end

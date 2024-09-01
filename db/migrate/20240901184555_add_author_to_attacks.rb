class AddAuthorToAttacks < ActiveRecord::Migration[7.2]
  def change
    add_column :attacks, :author_uid, :string
    add_column :attacks, :author_nickname, :string
    add_column :attacks, :author_image_url, :string
    add_column :attacks, :author_profile_url, :string
  end
end

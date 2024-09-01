class MakeAuthorNonNullable < ActiveRecord::Migration[7.2]
  def change
    execute <<~SQL
      delete from attacks where author_uid is null;
    SQL
    change_column_null :attacks, :author_uid, false
    change_column_null :attacks, :author_nickname, false
    change_column_null :attacks, :author_image_url, false
    change_column_null :attacks, :author_profile_url, false
  end
end

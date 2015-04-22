class AddShortUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :short_url, :string
  end
end

class AddLiveUrlToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :live_url, :string
  end
end

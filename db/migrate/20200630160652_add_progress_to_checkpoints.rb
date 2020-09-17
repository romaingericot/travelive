xclass AddProgressToCheckpoints < ActiveRecord::Migration[6.0]
  def change
    add_column :checkpoints, :progress, :integer
  end
end

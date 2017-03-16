class ChangeBio < ActiveRecord::Migration[5.0]
  def change
    rename_column(:actors, :boi, :bio)
  end
end

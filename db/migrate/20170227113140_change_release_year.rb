class ChangeReleaseYear < ActiveRecord::Migration[5.0]
  def change
    rename_column(:movies, :released_year, :release_year)
  end
end

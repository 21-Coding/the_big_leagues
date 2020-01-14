class AddForeignKeyForTournaments < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tournaments, :teams
  end
end

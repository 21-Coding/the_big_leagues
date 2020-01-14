class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.column(:name, :string)
      t.column(:location, :string)
      t.column(:team_a_id, :integer)
      t.column(:team_b_id, :integer)

      t.timestamps
    end
  end
end

class AddMayorViceMayorAreaPopulationSubdistrictVillageHeadofkesbangpolHeaddivisionAddressTelpEmailToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :mayor, :string
    add_column :cities, :vice_mayor, :string
    add_column :cities, :area, :string
    add_column :cities, :population, :string
    add_column :cities, :sub_district, :string
    add_column :cities, :village, :string
    add_column :cities, :head_of_kesbangpol, :string
    add_column :cities, :head_division, :string
    add_column :cities, :address, :text
    add_column :cities, :telp, :string
    add_column :cities, :email, :string
  end
end

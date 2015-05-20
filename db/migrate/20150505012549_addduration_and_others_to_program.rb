class AdddurationAndOthersToProgram < ActiveRecord::Migration
  def change
  	add_column :programs, :duration, :integer
  	add_column :programs, :description, :text
  end
end

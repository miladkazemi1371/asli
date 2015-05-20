class ChangeWorkIdInInvolvements < ActiveRecord::Migration
  def change
  	rename_column :involvements, :work_id,  :workout_id
  	rename_column :performeds, :work_id,  :workout_id

  end
end

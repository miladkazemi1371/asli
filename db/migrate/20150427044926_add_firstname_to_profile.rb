class AddFirstnameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :fistname, :string
  end
end

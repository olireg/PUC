class AddPolosIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :polos_id, :integer
    add_column :jobs, :situacao, :string
  end
end

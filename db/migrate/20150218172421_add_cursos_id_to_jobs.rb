class AddCursosIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :cursos_id, :integer
  end
end

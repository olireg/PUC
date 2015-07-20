class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :gestor, :boolean
    add_column :users, :gestorlocal, :integer
    add_column :users, :gestorCSH, :boolean
    add_column :users, :gestorM, :boolean
    add_column :users, :gestorMQ, :boolean
    add_column :users, :gestorEG, :boolean
    add_column :users, :gestorCM, :boolean
    add_column :users, :gestorCD, :boolean
    add_column :users, :primeiroNome, :string
    add_column :users, :segundoNome, :string
  end
end

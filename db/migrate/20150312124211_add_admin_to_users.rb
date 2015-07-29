class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :coordenadorLicPorto, :boolean
    add_column :users, :coordenadorMesPorto, :boolean
    add_column :users, :gestorCSHPorto, :boolean
    add_column :users, :gestorMPorto, :boolean
    add_column :users, :gestorMQPorto, :boolean
    add_column :users, :gestorEGPorto, :boolean
    #Mestrado de desing
    add_column :users, :coordenadorMesDesignPorto, :boolean
    add_column :users, :gestorCMPorto, :boolean
    add_column :users, :gestorCDPorto, :boolean


    add_column :users, :coordenadorLiclisboa, :boolean
    add_column :users, :coordenadorMesLisboa, :boolean
    add_column :users, :gestorMLisboa, :boolean
    add_column :users, :gestorMQLisboa, :boolean
    add_column :users, :gestorEGLisboa, :boolean
    add_column :users, :gestorCSHLisboa, :boolean

    add_column :users, :primeiroNome, :string
    add_column :users, :ultimoNome, :string
  end
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nome
      t.string :area_cientifica
      t.integer :anocurricular
      t.integer :semestre
      t.integer :creditos
      t.integer :codigouc
      t.string :tipo
      t.integer :teorica
      t.integer :teorica_pratica
      t.integer  :pratica_laboratoriais
      t.integer  :trabalho_campo
      t.integer  :seminarios
      t.integer  :estagio
      t.integer  :orientacao_tutorial
      t.integer  :outras
      t.integer  :estudo
      t.integer  :trabalho_grupo
      t.integer  :trabalho_projecto
      t.integer  :horas_avaliacao
      t.integer  :cursos_id
      
      t.timestamps null: false
    end
  end
end

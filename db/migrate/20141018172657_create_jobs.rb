class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
	    t.text     :docente           
	    t.text     :email             
	    t.text     :objectivos        
	    t.text     :conteudo         
	    t.text     :demostracao       
	    t.text     :metodologia       
	    t.text     :bibliografia      
	    t.text     :objectivos_ing    
	    t.text     :conteudos_ing     
	    t.text     :demostracao_ing   
	    t.text     :metodologia_ing   
	    t.text     :bibliografia_ing

      t.timestamps
    end
  end
end
class JobsController < ApplicationController
	before_action :find_job, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	before_filter :require_login

	def index 

		#pucs para IPAM-Porto meter apenas as categorias da licenciatura depois abrir outro if para mestrados 
			if  current_user.try(:coordenadorLicPorto) 
				@jobs = Job.where("situacao = 'pendente' and polos_id = 1 and (category_id = 1 or category_id = 2 or category_id = 3 or category_id = 4 or category_id = 5 or category_id = 6 or category_id = 7 or category_id = 8 or category_id = 9 or category_id = 10 or category_id = 11 or category_id = 12 or category_id = 13 or category_id = 14 or category_id = 15 or category_id = 16 or category_id = 17 or category_id = 18 or category_id = 19 or category_id = 20 or category_id = 21 or category_id = 22 or category_id = 23 or category_id = 24 or category_id = 25 or category_id = 26 or category_id = 27 or category_id = 28 or category_id = 29 ) " ).paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.all.order("created_at DESC").paginate(page: params[:page], per_page:4)
	  		elsif current_user.try(:gestorMPorto )  # marketing
	  			@jobs = Job.where("(category_id = 30 or category_id = 34 or category_id = 36 or category_id = 37 or category_id = 40  or category_id = 41  or category_id = 42 or category_id = 43 or category_id = 44 or category_id = 1 or category_id = 6 or category_id = 10 or category_id = 11 or category_id = 12  or category_id = 13  or category_id = 17 or category_id = 18 or category_id = 20 or category_id = 22  or category_id = 24 or category_id = 25 or category_id = 28 or category_id = 29 or category_id = 30 ) and situacao = 'pendente'  and polos_id = 1").paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.where(  :category_id  => "1" , :category_id => "10" , :category_id => "6" , :category_id  => "11"  , :category_id => "12"  , :category_id  => "13" , :category_id => "17" , :category_id => "18" , :category_id  => "20" , :category_id => "22" , :category_id  => "25" , :category_id  => "28" , :category_id  => "29"   ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:gestorCSHPorto ) # Sociais e humanas
				@jobs = Job.where("( category_id = 49 or category_id = 60 or category_id = 61  or category_id = 31 or category_id = 35  or category_id = 3 or category_id = 4 or category_id = 8 or category_id = 16 or category_id = 21 or category_id = 27  ) and situacao = 'pendente'  and polos_id = 1").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorMQPorto ) # Metodos 
				@jobs = Job.where("( category_id = 39 or category_id = 5 or category_id = 9 or category_id = 15 or category_id = 26 ) and situacao = 'pendente' and polos_id = 1  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorEGPorto ) # economia e Gestão 
				@jobs = Job.where("(category_id = 38 or category_id = 32 or category_id = 33  or category_id = 2 or category_id = 7 or category_id = 14 or category_id = 19 or category_id = 23 ) and situacao = 'pendente'  and polos_id = 1 ").paginate(page: params[:page], per_page:4)  
			# Areás do mestrado
			elsif current_user.try(:gestorCM? ) # Ciencias do marketing
				@jobs = Job.where("(category_id = 47 or category_id = 48 or category_id = 50 or category_id = 51 or category_id = 52 or category_id = 53 or category_id = 54 or category_id = 56 or category_id = 58) and situacao = 'pendente'  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorCD? ) # Ciencias do Design
				@jobs = Job.where("(category_id = 45 or category_id = 46 or category_id = 55 or category_id = 57 or category_id = 59 or category_id = 62 ) and situacao = 'pendente'  ").paginate(page: params[:page], per_page:4)  
			
			elsif  current_user.try(:coordenadorMesPorto )  # validação efetuado pelo coordenador do mestrado de marketing
				@jobs = Job.where("situacao = 'pendente' and polos_id = 1 and (category_id = 30 or category_id = 31 or category_id = 32 or category_id = 33 or category_id = 34 or category_id = 35 or category_id = 36 or category_id = 37 or category_id = 38 or category_id = 39 or category_id = 40 or category_id = 41 or category_id = 42 or category_id = 43 or category_id = 44  ) " ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:coordenadorMesDesignPorto?) # validação efetuado pelo coordenador do mestrado de desing
				@jobs = Job.where("situacao = 'pendente' and polos_id = 1 and (category_id = 45 or category_id = 46 or category_id = 47 or category_id = 48 or category_id = 49 or category_id = 50 or category_id = 51 or category_id = 52 or category_id = 53 or category_id = 54 or category_id = 55 or category_id = 56 or category_id = 57 or category_id = 58 or category_id = 59 or category_id = 60 or category_id = 61 or category_id = 62  ) " ).paginate(page: params[:page], per_page:4)
			else

			end

				# PLANO CURRICULARES DO IPAM LISBOA

			if  current_user.try(:coordenadorLicLisboa?) 
				@jobs = Job.where("situacao = 'pendente' and polos_id = 2 and (category_id = 1 or category_id = 2 or category_id = 3 or category_id = 4 or category_id = 5 or category_id = 6 or category_id = 7 or category_id = 8 or category_id = 9 or category_id = 10 or category_id = 11 or category_id = 12 or category_id = 13 or category_id = 14 or category_id = 15 or category_id = 16 or category_id = 17 or category_id = 18 or category_id = 19 or category_id = 20 or category_id = 21 or category_id = 22 or category_id = 23 or category_id = 24 or category_id = 25 or category_id = 26 or category_id = 27 or category_id = 28 or category_id = 29 ) " ).paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.all.order("created_at DESC").paginate(page: params[:page], per_page:4)
	  		elsif current_user.try(:gestorMLisboa? )  # marketing
	  			@jobs = Job.where("(category_id = 30 or category_id = 34 or category_id = 36 or category_id = 37 or category_id = 40  or category_id = 41  or category_id = 42 or category_id = 43 or category_id = 44  or category_id = 1 or category_id = 6 or category_id = 10 or category_id = 11 or category_id = 12  or category_id = 13  or category_id = 17 or category_id = 18 or category_id = 20 or category_id = 22  or category_id = 24 or category_id = 25 or category_id = 28 or category_id = 29 or category_id = 30 ) and situacao = 'pendente'  and polos_id = 2").paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.where(  :category_id  => "1" , :category_id => "10" , :category_id => "6" , :category_id  => "11"  , :category_id => "12"  , :category_id  => "13" , :category_id => "17" , :category_id => "18" , :category_id  => "20" , :category_id => "22" , :category_id  => "25" , :category_id  => "28" , :category_id  => "29"   ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:gestorCSHLisboa? ) # Sociais e humanas
				@jobs = Job.where("( category_id = 31 or category_id = 35  or category_id = 3 or category_id = 4 or category_id = 8 or category_id = 16 or category_id = 21 or category_id = 27  ) and situacao = 'pendente'  and polos_id = 2").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorMQLisboa? ) # Metodos 
				@jobs = Job.where("(category_id = 39  or category_id = 5 or category_id = 9 or category_id = 15 or category_id = 26 ) and situacao = 'pendente' and polos_id = 1  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorEGLisboa? ) # economia e Gestão 
				@jobs = Job.where("( category_id = 38 or category_id = 32 or category_id = 33 or category_id = 2 or category_id = 7 or category_id = 14 or category_id = 19 or category_id = 23 ) and situacao = 'pendente'  and polos_id = 2 ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:coordenadorMesLisboa?) 
				@jobs = Job.where("situacao = 'pendente' and polos_id = 2 and (category_id = 30 or category_id = 31 or category_id = 32 or category_id = 33 or category_id = 34 or category_id = 35 or category_id = 36 or category_id = 37 or category_id = 38 or category_id = 39 or category_id = 40 or category_id = 41 or category_id = 42 or category_id = 43 or category_id = 44  ) " ).paginate(page: params[:page], per_page:4)
			else
				#@jobs = Job.where(user_id: current_user.id).paginate(page: params[:page], per_page:4)
				#@jobs = Job.where("situacao = 'pendente' and polos_id =1 ").paginate(page: params[:page], per_page:4)
			end	
			if current_user.try(:admin)
				@jobs = Job.where("(category_id = 1 or category_id = 2 or category_id = 3 or category_id = 4 or category_id = 5 or category_id = 6 or category_id = 7 or category_id = 8 or category_id = 9 or category_id = 10 or category_id = 11 or category_id = 12 or category_id = 13 or category_id = 14 or category_id = 15 or category_id = 16 or category_id = 17 or category_id = 18 or category_id = 19 or category_id = 20 or category_id = 21 or category_id = 22 or category_id = 23 or category_id = 24 or category_id = 25 or category_id = 26 or category_id = 27 or category_id = 28 or category_id = 29 or category_id = 30 or category_id = 31 or category_id = 32 or category_id = 33 or category_id = 34 or category_id = 35 or category_id = 36 or category_id = 37 or category_id = 38 or category_id = 39 or category_id = 40 or category_id = 41 or category_id = 42 or category_id = 43 or category_id = 44  or category_id = 45 or category_id = 46 or category_id = 47 or category_id = 48 or category_id = 49 or category_id = 50 or category_id = 51 or category_id = 52 or category_id = 53 or category_id = 54 or category_id = 55 or category_id = 56 or category_id = 57 or category_id = 58 or category_id = 59 or category_id = 60 or category_id = 61 or category_id = 62   ) " ).paginate(page: params[:page], per_page:4)
			else

			end

			
	end 

	def puc_validados
			
				if  current_user.try(:coordenadorLicPorto) 
				@jobs = Job.where("situacao = 'validado' and polos_id = 1 and (category_id = 1 or category_id = 2 or category_id = 3 or category_id = 4 or category_id = 5 or category_id = 6 or category_id = 7 or category_id = 8 or category_id = 9 or category_id = 10 or category_id = 11 or category_id = 12 or category_id = 13 or category_id = 14 or category_id = 15 or category_id = 16 or category_id = 17 or category_id = 18 or category_id = 19 or category_id = 20 or category_id = 21 or category_id = 22 or category_id = 23 or category_id = 24 or category_id = 25 or category_id = 26 or category_id = 27 or category_id = 28 or category_id = 29 ) " ).paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.all.order("created_at DESC").paginate(page: params[:page], per_page:4)
	  		elsif current_user.try(:gestorMPorto )  # marketing
	  			@jobs = Job.where("(category_id = 30 or category_id = 34 or category_id = 36 or category_id = 37 or category_id = 40  or category_id = 41  or category_id = 42 or category_id = 43 or category_id = 44 or category_id = 1 or category_id = 6 or category_id = 10 or category_id = 11 or category_id = 12  or category_id = 13  or category_id = 17 or category_id = 18 or category_id = 20 or category_id = 22  or category_id = 24 or category_id = 25 or category_id = 28 or category_id = 29 or category_id = 30 ) and situacao = 'validado'  and polos_id = 1").paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.where(  :category_id  => "1" , :category_id => "10" , :category_id => "6" , :category_id  => "11"  , :category_id => "12"  , :category_id  => "13" , :category_id => "17" , :category_id => "18" , :category_id  => "20" , :category_id => "22" , :category_id  => "25" , :category_id  => "28" , :category_id  => "29"   ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:gestorCSHPorto ) # Sociais e humanas
				@jobs = Job.where("( category_id = 49 or category_id = 60 or category_id = 61  or category_id = 31 or category_id = 35  or category_id = 3 or category_id = 4 or category_id = 8 or category_id = 16 or category_id = 21 or category_id = 27  ) and situacao = 'validado'  and polos_id = 1").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorMQPorto ) # Metodos 
				@jobs = Job.where("( category_id = 39 or category_id = 5 or category_id = 9 or category_id = 15 or category_id = 26 ) and situacao = 'pendente' and polos_id = 1  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorEGPorto ) # economia e Gestão 
				@jobs = Job.where("(category_id = 38 or category_id = 32 or category_id = 33  or category_id = 2 or category_id = 7 or category_id = 14 or category_id = 19 or category_id = 23 ) and situacao = 'validado'  and polos_id = 1 ").paginate(page: params[:page], per_page:4)  
			# Areás do mestrado
			elsif current_user.try(:gestorCMPorto ) # Ciencias do marketing
				@jobs = Job.where("(category_id = 47 or category_id = 48 or category_id = 50 or category_id = 51 or category_id = 52 or category_id = 53 or category_id = 54 or category_id = 56 or category_id = 58) and situacao = 'validado'  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorCDPorto) # Ciencias do Design
				@jobs = Job.where("(category_id = 45 or category_id = 46 or category_id = 55 or category_id = 57 or category_id = 59 or category_id = 62 ) and situacao = 'validado'  ").paginate(page: params[:page], per_page:4)  
			
			elsif  current_user.try(:coordenadorMesPorto?)  # validação efetuado pelo coordenador do mestrado de marketing
				@jobs = Job.where("situacao = 'validado' and polos_id = 1 and (category_id = 30 or category_id = 31 or category_id = 32 or category_id = 33 or category_id = 34 or category_id = 35 or category_id = 36 or category_id = 37 or category_id = 38 or category_id = 39 or category_id = 40 or category_id = 41 or category_id = 42 or category_id = 43 or category_id = 44  ) " ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:coordenadorMesDesignPorto?) # validação efetuado pelo coordenador do mestrado de desing
				@jobs = Job.where("situacao = 'validado' and polos_id = 1 and (category_id = 45 or category_id = 46 or category_id = 47 or category_id = 48 or category_id = 49 or category_id = 50 or category_id = 51 or category_id = 52 or category_id = 53 or category_id = 54 or category_id = 55 or category_id = 56 or category_id = 57 or category_id = 58 or category_id = 59 or category_id = 60 or category_id = 61 or category_id = 62  ) " ).paginate(page: params[:page], per_page:4)
			else

			end

				# PLANO CURRICULARES DO IPAM LISBOA

			if  current_user.try(:coordenadorLicLisboa?) 
				@jobs = Job.where("situacao = 'validado' and polos_id = 2 and (category_id = 1 or category_id = 2 or category_id = 3 or category_id = 4 or category_id = 5 or category_id = 6 or category_id = 7 or category_id = 8 or category_id = 9 or category_id = 10 or category_id = 11 or category_id = 12 or category_id = 13 or category_id = 14 or category_id = 15 or category_id = 16 or category_id = 17 or category_id = 18 or category_id = 19 or category_id = 20 or category_id = 21 or category_id = 22 or category_id = 23 or category_id = 24 or category_id = 25 or category_id = 26 or category_id = 27 or category_id = 28 or category_id = 29 ) " ).paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.all.order("created_at DESC").paginate(page: params[:page], per_page:4)
	  		elsif current_user.try(:gestorMLisboa? )  # marketing
	  			@jobs = Job.where("(category_id = 30 or category_id = 34 or category_id = 36 or category_id = 37 or category_id = 40  or category_id = 41  or category_id = 42 or category_id = 43 or category_id = 44  or category_id = 1 or category_id = 6 or category_id = 10 or category_id = 11 or category_id = 12  or category_id = 13  or category_id = 17 or category_id = 18 or category_id = 20 or category_id = 22  or category_id = 24 or category_id = 25 or category_id = 28 or category_id = 29 or category_id = 30 ) and situacao = 'validado'  and polos_id = 2").paginate(page: params[:page], per_page:4)
	  			#@jobs = Job.where(  :category_id  => "1" , :category_id => "10" , :category_id => "6" , :category_id  => "11"  , :category_id => "12"  , :category_id  => "13" , :category_id => "17" , :category_id => "18" , :category_id  => "20" , :category_id => "22" , :category_id  => "25" , :category_id  => "28" , :category_id  => "29"   ).paginate(page: params[:page], per_page:4)
			elsif current_user.try(:gestorCSHLisboa? ) # Sociais e humanas
				@jobs = Job.where("( category_id = 31 or category_id = 35  or category_id = 3 or category_id = 4 or category_id = 8 or category_id = 16 or category_id = 21 or category_id = 27  ) and situacao = 'validado'  and polos_id = 2").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorMQLisboa? ) # Metodos 
				@jobs = Job.where("(category_id = 39  or category_id = 5 or category_id = 9 or category_id = 15 or category_id = 26 ) and situacao = 'validado' and polos_id = 1  ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:gestorEGLisboa? ) # economia e Gestão 
				@jobs = Job.where("( category_id = 38 or category_id = 32 or category_id = 33 or category_id = 2 or category_id = 7 or category_id = 14 or category_id = 19 or category_id = 23 ) and situacao = 'validado'  and polos_id = 2 ").paginate(page: params[:page], per_page:4)  
			elsif current_user.try(:coordenadorMesLisboa?) 
				@jobs = Job.where("situacao = 'validado' and polos_id = 2 and (category_id = 30 or category_id = 31 or category_id = 32 or category_id = 33 or category_id = 34 or category_id = 35 or category_id = 36 or category_id = 37 or category_id = 38 or category_id = 39 or category_id = 40 or category_id = 41 or category_id = 42 or category_id = 43 or category_id = 44  ) " ).paginate(page: params[:page], per_page:4)
			else
				#@jobs = Job.where(user_id: current_user.id).paginate(page: params[:page], per_page:4)
				#@jobs = Job.where("situacao = 'pendente' and polos_id =1 ").paginate(page: params[:page], per_page:4)
			end	

	end

	def index2
		@jobs = Job.where(user_id: current_user.id ).paginate(page: params[:page], per_page:4)
	end


	def show
		
	end

	def print
		 @job = Job.find(params[:id])
		 render layout: false
		
	end
	def printEN
		 @job = Job.find(params[:id])
		 render layout: false
	end


	def new
		@user = current_user
 		 @job = @user.jobs.build
		
	end

	def notifica
	  @job = Job.find(params[:id])
	  UserMailer.submissao_puc(@job).deliver
	  @job.update_attributes(:situacao => 'Pendente')
	  flash[:notice] = 'report sent!'
	  redirect_to root_path 
	end

	def notificaDocente
	  @job = Job.find(params[:id])
	  UserMailer.notificarDocente(@job).deliver
	 @job.update_attributes(:situacao => 'validado')
	  

	  flash[:notice] = 'report sent!'
	  redirect_to root_path 
	end

	
	def create
	   @user = current_user
	   @job = @user.jobs.create(jobs_params)
	 	@job.update_attributes(:situacao => 'Pendente')
	 	@job.update_attributes(:email => @job.user.email)	

	  if @job.save
	    redirect_to root_path
	 #	UserMailer.submissao_puc(@job).deliver
	  else
	    render new_user_job_path(current_user.id)
	  end
	 end
	

	def edit

	end

	def update
		if @job.update(jobs_params)
			redirect_to @job
		else
			render "Edit"
		end
	end

	def destroy
		@job.destroy
		redirect_to root_path
	end

	private

	def jobs_params
		params.require(:job).permit(:docente, :email, :objectivos, :conteudo, :demostracao, :metodologia,:bibliografia, :objectivos_ing, :conteudos_ing, :demostracao_ing, :metodologia_ing, :bibliografia_ing, :category_id, :cursos_id, :user_id, :polos_id)
	end

	def find_job
		@job = Job.find(params[:id])
	end


  	def require_login
    	unless current_user
     	 redirect_to new_user_session_path
    	end
  	end


end

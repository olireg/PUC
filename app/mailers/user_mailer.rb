class UserMailer < ActionMailer::Base
  default from: "joel.regufe@ipam.pt"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.submissao_puc.subject
  #
  def submissao_puc(job)
    @job = job

    if @job.category.area_cientifica == "Ciências Sociais e Humanas"
      email1 = @job.email  # Docente que fez o PUC
      email2 = "20585@ipam.pt" # director de curso
      email3 = "joel_regufe@hotmail.com" # coordenador de Area
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
    elsif @job.category.area_cientifica == "Marketing"
      email1 = @job.email      # Docente que fez o PUC
      email2 = "20585@ipam.pt" # director de Curso
      email3 = "joel_regufe@hotmail.com" # coordenador de área
      recipients = email3, email2
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
    elsif @job.category.area_cientifica == "Métodos Quantitativos"
      email1 = @job.email           # Docente que fez o PUC
      email2 = "joel.regufe@ipam.pt" # director de Curso 
      email3 = "20585@ipam.pt"  # Coordenador de Área
      recipients = email1, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"

    elsif @job.category.area_cientifica == "Economia e Gestão"
      email1 = @job.email       # Docente que fez o PUC
      email2 = "joel.regufe@ipam.pt"  # director de Curso 
      #email2 = "joel_regufe@hotmail.com" # Coordenador de Área
      recipients = email1, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
      # Mestrado de Desing.
    elsif @job.category.area_cientifica == "Ciências do Design" 
      email1 = @job.email  # Docente que fez o PUC
      email2 = "20585@ipam.pt" # director de curso
      email3 = "joel_regufe@hotmail.com" # coordenador de Area
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
    else
      
    end  
  end

  def notificarDocente(job)
    @job = job

    if @job.category.area_cientifica == 'Ciências Sociais e Humanas' 
      email1 = @job.email
      email2 = "20585@ipam.pt"
      email3 = "joel_regufe@hotmail.com"
      recipients = email3, email2
      mail to: recipients.join(','), subject: "PUC aprovado"
    elsif @job.category.area_cientifica == "Marketing"
      email1 = @job.email
      email2 = "20585@ipam.pt"
      email3 = "joel_regufe@hotmail.com"
      recipients = email3, email2
      mail to: recipients.join(','), subject: "PUC aprovado"
    elsif @job.category.area_cientifica == "Métodos Quantitativos"
      email1 = @job.email
      email2 = "joel.regufe@ipam.pt"
      #email2 = "joel_regufe@hotmail.com"
      recipients = email1, email2
      mail to: recipients.join(','), subject: "PUC aprovado"

    elsif @job.category.area_cientifica == "Economia e Gestão"
      email1 = @job.email
      email2 = "joel.regufe@ipam.pt"
      #email2 = "joel_regufe@hotmail.com"
      recipients = email1, email2
      mail to: recipients.join(','), subject: "PUC aprovado"
    elsif @job.category.area_cientifica == "Ciências do Design" 
      email1 = @job.email  # Docente que fez o PUC
      email2 = "20585@ipam.pt" # director de curso
      email3 = "joel_regufe@hotmail.com" # coordenador de Area
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
 
    else
      
    end  
  end
  def notificaComentario(comment, job)
  @comment = comment
  @job = job 
 # mail to: @job.email, subject: "Comentario"
  
  if @job.category.area_cientifica == "Ciências Sociais e Humanas"
      email1 = @job.email
      email2 = "20585@ipam.pt"
      email3 = "joel_regufe@hotmail.com"
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Comentario ao PUC"
    elsif @job.category.area_cientifica == "Marketing"
      email1 = @job.email
      email2 = "20585@ipam.pt"
      email3 = "joel_regufe@hotmail.com"
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Comentario ao PUC"
    elsif @job.category.area_cientifica == "Métodos Quantitativos"
      email1 = @job.email
      email2 = "joel.regufe@ipam.pt"
      email3 = "20585@ipam.pt"
      recipients = email1, email2,email1
      mail to: recipients.join(','), subject: "Comentario ao PUC"

    elsif @job.category.area_cientifica == "Economia e Gestão"
      email1 = @job.email
      email2 = "joel.regufe@ipam.pt"
      #email2 = "joel_regufe@hotmail.com"
      recipients = email1, email2,email1
      mail to: recipients.join(','), subject: "Comentario ao PUC"
    elsif @job.category.area_cientifica == "Ciências do Design" 
      email1 = @job.email  # Docente que fez o PUC
      email2 = "20585@ipam.pt" # director de curso
      email3 = "joel_regufe@hotmail.com" # coordenador de Area
      recipients = email3, email2,email1
      mail to: recipients.join(','), subject: "Submissão do PUC para Avaliação"
 
    else
      
    end  
  end
end


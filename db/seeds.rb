# Docentes
User.create(:email => "06118@ipam.pt", :password => "06518366", :password_confirmation => "06518366", :primeiroNome => "Ana", :ultimoNome => "Cruz")
User.create(:email => "04000@ipam.pt", :password => "06869069", :password_confirmation => "06869069", :primeiroNome => "Caetano", :ultimoNome => "Alves")
User.create(:email => "04012@ipam.pt", :password => "06882517", :password_confirmation => "06882517", :primeiroNome => "Carlos", :ultimoNome => "Brito")
User.create(:email => "06334@ipam.pt", :password => "10859129", :password_confirmation => "10859129", :primeiroNome => "Cidália", :ultimoNome => "Neves")
 
User.create(:email => "00653@ipam.pt", :password => "10494676", :password_confirmation => "10494676", :primeiroNome => "Daniel", :ultimoNome => "Sá")
User.create(:email => "07470@ipam.pt", :password => "10960696", :password_confirmation => "10960696", :primeiroNome => "Filipe", :ultimoNome => "Rodrigues")
 
User.create(:email => "04014@ipam.pt", :password => "05496741", :password_confirmation => "05496741", :primeiroNome => "Francisco", :ultimoNome => "Coelho")
User.create(:email => "04016@ipam.pt", :password => "03949355", :password_confirmation => "03949355", :primeiroNome => "Henrique", :ultimoNome => "Pires")
User.create(:email => "12609@ipam.pt", :password => "13041854", :password_confirmation => "13041854", :primeiroNome => "Irina", :ultimoNome => "Amaral")
User.create(:email => "03976@ipam.pt", :password => "12317375", :password_confirmation => "12317375", :primeiroNome => "Isabel", :ultimoNome => "Machado")
User.create(:email => "03981@ipam.pt", :password => "06229682", :password_confirmation => "06229682", :primeiroNome => "Joaquim", :ultimoNome => "Marques")
User.create(:email => "04018@ipam.pt", :password => "05658364", :password_confirmation => "05658364", :primeiroNome => "José", :ultimoNome => "Reis")
 
User.create(:email => "04048@ipam.pt", :password => "10005577", :password_confirmation => "10005577", :primeiroNome => "Luís", :ultimoNome => "Schwab")
User.create(:email => "04031@ipam.pt", :password => "9101002", :password_confirmation => "9101002", :primeiroNome => "Mafalda", :ultimoNome => "Ferreira")
User.create(:email => "21690@ipam.pt", :password => "10740577", :password_confirmation => "10740577", :primeiroNome => "Mafalda", :ultimoNome => "Nogueira")
User.create(:email => "07372@ipam.pt", :password => "10311526", :password_confirmation => "10311526", :primeiroNome => "Manuel", :ultimoNome => "Gouveia")
User.create(:email => "04029@ipam.pt", :password => "03329036", :password_confirmation => "03329036", :primeiroNome => "Mário", :ultimoNome => "Coelho")
User.create(:email => "04714@ipam.pt", :password => "05708686", :password_confirmation => "05708686", :primeiroNome => "Nunes", :ultimoNome => "Carneiro")
 
User.create(:email => "08130@ipam.pt", :password => "08131415", :password_confirmation => "08131415", :primeiroNome => "Paula", :ultimoNome => "Arriscado")
User.create(:email => "08161@ipam.pt", :password => "05800099", :password_confirmation => "05800099", :primeiroNome => "Paula", :ultimoNome => "Campos")
User.create(:email => "03994@ipam.pt", :password => "04473391", :password_confirmation => "04473391", :primeiroNome => "Paulo", :ultimoNome => "Porto")
User.create(:email => "03996@ipam.pt", :password => "06563401", :password_confirmation => "06563401", :primeiroNome => "Pedro", :ultimoNome => "Aguiar")
User.create(:email => "07371@ipam.pt", :password => "09848347", :password_confirmation => "09848347", :primeiroNome => "Pedro", :ultimoNome => "Barbosa")
User.create(:email => "00164@ipam.pt", :password => "10877808", :password_confirmation => "10877808", :primeiroNome => "Ricardo", :ultimoNome => "Mena")
 
User.create(:email => "06525@ipam.pt", :password => "08988620", :password_confirmation => "08988620", :primeiroNome => "Rui", :ultimoNome => "Dias")
User.create(:email => "08133@ipam.pt", :password => "08819115", :password_confirmation => "08819115", :primeiroNome => "Rui", :ultimoNome => "Saavedra")
User.create(:email => "04035@ipam.pt", :password => "08746359", :password_confirmation => "08746359", :primeiroNome => "Sandra", :ultimoNome => "Gomes")
User.create(:email => "03999@ipam.pt", :password => "07297492", :password_confirmation => "07297492", :primeiroNome => "Sílvia", :ultimoNome => "Bandeira")
User.create(:email => "07477@ipam.pt", :password => "10007167", :password_confirmation => "10007167", :primeiroNome => "Susana", :ultimoNome => "Santos")
User.create(:email => "02029@ipam.pt", :password => "11128634", :password_confirmation => "11128634", :primeiroNome => "Teresa", :ultimoNome => "Aragonez")
 
 
#Staff
User.create(:email => "04154@ipam.pt", :password => "08490350", :password_confirmation => "08490350", :primeiroNome => "Diana", :ultimoNome => "Barradas")
User.create(:email => "20585@ipam.pt", :password => "13376142", :password_confirmation => "13376142", :primeiroNome => "Joel", :ultimoNome => "Regufe")
User.create(:email => "04133@ipam.pt", :password => "07106256", :password_confirmation => "07106256", :primeiroNome => "Teresa", :ultimoNome => "Aragonez")










Polos.create(nome:"Instituto Português de Administração de Marketing do Porto", local: "1");
Polos.create(nome:"Instituto Português de Administração de Marketing de Lisboa", local: "2");
Polos.create(nome:"Instituto de Arte, Design e Empresa - Universitário", local: "3");
Polos.create(nome:"Universidade Europeia", local: "4");


Cursos.create(nome:"Licenciatura em Gestão de Marketing", codigocurso:"100" , instituicao:"Instituto Português de Administração de Marketing do Porto",codigolocal:1)

Cursos.create(nome:"Mestrado em Gestão de Marketing", codigocurso:"M100", instituicao:"Instituto Português de Administração de Marketing de Porto",codigolocal:2)


Cursos.create(nome:"Mestrado em Design Management", codigocurso:"M103" , instituicao:"Instituto Português de Administração de Marketing do Porto",codigolocal:3)



Category.create(nome:"Fundamentos de Marketing", area_cientifica:"Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1101, tipo:"Semestral", teorica: 30, teorica_pratica: 15, trabalho_campo: 10, seminarios: 5, estudo: 50, trabalho_grupo: 40, horas_avaliacao: 6 , cursos_id: 1 )
Category.create(nome:"Fundamentos de Gestão", area_cientifica:"Economia e Gestão", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1102, tipo:"Semestral", teorica: 20, teorica_pratica: 30, trabalho_campo: 8, orientacao_tutorial: 2, estudo: 60 ,trabalho_grupo: 30, horas_avaliacao: 6, cursos_id: 1)
Category.create(nome:"Linguagem e Apresentação Empresarial", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1103, tipo:"Semestral" ,teorica: 10, teorica_pratica:15,pratica_laboratoriais:15, trabalho_campo: 10, orientacao_tutorial: 1 , estudo: 25, trabalho_grupo: 50,trabalho_projecto: 34, horas_avaliacao: 2,cursos_id: 1)
Category.create(nome:"Cultura Ideologia e Mercado", area_cientifica:"Ciências Sociais e Humana", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1104, tipo:"Semestral",teorica:15, teorica_pratica:20, trabalho_campo:5, seminarios:4, orientacao_tutorial:1, estudo:35,trabalho_grupo:40,trabalho_projecto:33, horas_avaliacao:3 ,cursos_id: 1)
Category.create(nome:"Investigação e Métodos Quantitativos", area_cientifica:"Métodos Quantitativos", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1105, tipo:"Semestral", teorica:20, teorica_pratica:15, trabalho_campo:20, orientacao_tutorial:5,estudo:55,trabalho_grupo:25,trabalho_projecto:12,horas_avaliacao:4,cursos_id: 1)
# Primeiro Ano - Segundo Semestre
Category.create(nome:"Marketing", area_cientifica:"Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: 1206, tipo:"Semestral",teorica:25, teorica_pratica:15, trabalho_campo:10,seminarios:5, orientacao_tutorial:5, estudo:50,trabalho_grupo:40,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Economia da Empresa", area_cientifica:"Economia e Gestão", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: 1202, tipo:"Semestral",teorica:20,teorica_pratica:20, trabalho_campo:15, seminarios:3, orientacao_tutorial:2,estudo:50,trabalho_grupo:40,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Comportamento do Consumidor", area_cientifica:"Ciências Sociais e Humana", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: 1203, tipo:"Semestral",teorica:15, teorica_pratica:10,pratica_laboratoriais:10,trabalho_campo:5,seminarios:4,orientacao_tutorial:1,estudo:45,trabalho_grupo:30,trabalho_projecto:27,horas_avaliacao:9,cursos_id: 1)
Category.create(nome:"Estatística Descritiva", area_cientifica:"Métodos Quantitativos", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: 1204, tipo:"Semestral",teorica:30,teorica_pratica:20,trabalho_campo:8,orientacao_tutorial:2,estudo:55,trabalho_grupo:35,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Laboratório de Marketing e Consumo A", area_cientifica:"Marketing", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: 1207, tipo:"Semestral",teorica_pratica:9,pratica_laboratoriais:20,trabalho_campo:10,seminarios:6,estudo:10,trabalho_grupo:40,trabalho_projecto:50,horas_avaliacao:11,cursos_id: 1)

#Segundo Ano - Primeiro Semestre
Category.create(nome:"Gestão da Comunicação", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: 1301, tipo:"Semestral",teorica:20,teorica_pratica:15,pratica_laboratoriais:5,trabalho_campo:5,estudo:40,trabalho_grupo:40,trabalho_projecto:25,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Estudos de Mercado", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: 1302, tipo:"Semestral",teorica:20,teorica_pratica:15,pratica_laboratoriais:15,trabalho_campo:8,orientacao_tutorial:2,estudo:45,trabalho_grupo:25,trabalho_projecto:18,horas_avaliacao:8,cursos_id: 1)
Category.create(nome:"Gestão de Produto", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: 1303, tipo:"Semestral",teorica:20,teorica_pratica:15,pratica_laboratoriais:10,trabalho_campo:10,orientacao_tutorial:5,estudo:45,trabalho_grupo:45,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Economia e Negócios Internacionais", area_cientifica:"Economia e Gestão", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: 1304, tipo:"Semestral",teorica_pratica:20,teorica_pratica:20,trabalho_campo:15,seminarios:4,orientacao_tutorial:1,estudo:50,trabalho_grupo:43,horas_avaliacao:3,cursos_id: 1)
Category.create(nome:"Métodos De Previsão", area_cientifica:"Métodos Quantitativos", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: 1305, tipo:"Semestral",teorica:20,teorica_pratica:15,pratica_laboratoriais:10,trabalho_campo:10,orientacao_tutorial:5,estudo:50,trabalho_grupo:40,horas_avaliacao:6,cursos_id: 1)

#Segundo Ano - Segundo Semestre
Category.create(nome:"Comportamento Organizacional", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 2 , semestre: 2 , creditos: 6 , codigouc: 1401, tipo:"Semestral",teorica:15,teorica_pratica:10,pratica_laboratoriais:5,trabalho_campo:10,seminarios:3,orientacao_tutorial:2 ,estudo:40, trabalho_grupo:30,trabalho_projecto:35,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Publicidade", area_cientifica:"Marketing", anocurricular: 2 , semestre: 2 , creditos: 6 , codigouc: 1402, tipo:"Semestral",teorica:15,teorica_pratica:20,pratica_laboratoriais:10,trabalho_campo:10,seminarios:3,orientacao_tutorial:2,estudo:30,trabalho_grupo:30,trabalho_projecto:30,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Gestão de Preços", area_cientifica:"Marketing", anocurricular: 2 , semestre: 2 , creditos: 6 , codigouc: 1403, tipo:"Semestral",teorica:15,teorica_pratica:20,pratica_laboratoriais:5,trabalho_campo:10,seminarios:8,orientacao_tutorial:2,estudo:45,trabalho_grupo:45,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Contabilidade de Gestão", area_cientifica:"Economia e Gestão", anocurricular: 2 , semestre: 2 , creditos: 6 , codigouc: 1404, tipo:"Semestral",teorica:15,teorica_pratica:15,pratica_laboratoriais:20,trabalho_campo:5,orientacao_tutorial:5,estudo:55,trabalho_grupo:35,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Laboratório de Marketing e Consumo B", area_cientifica:"Marketing", anocurricular: 2 , semestre: 2 , creditos: 6 , codigouc: 1406, tipo:"Semestral",teorica_pratica:9,pratica_laboratoriais:20,trabalho_campo:10,seminarios:6,estudo:10,trabalho_grupo:40,trabalho_projecto:50,horas_avaliacao:11,cursos_id: 1)
# Terceiro Ano - Primeiro Semestre
Category.create(nome:"Dinâmica e Animação de Grupo", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 3 , semestre: 1 , creditos: 6 , codigouc: 1501, tipo:"Semestral",teorica:10,pratica_laboratoriais:20,trabalho_campo:10,seminarios:3,orientacao_tutorial:2,estudo:20,trabalho_grupo:50,trabalho_projecto:30,horas_avaliacao:11,cursos_id: 1)
Category.create(nome:"Gestão de Canais de Distribuição", area_cientifica:"Marketing", anocurricular: 3 , semestre: 1 , creditos: 6 , codigouc: 1502, tipo:"Semestral",teorica:20,teorica_pratica:15,pratica_laboratoriais:15,trabalho_campo:13,seminarios:5,orientacao_tutorial:2,estudo:40,trabalho_grupo:30,trabalho_projecto:20,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Gestão Financeira", area_cientifica:"Economia e Gestão", anocurricular: 3 , semestre: 1 , creditos: 6 , codigouc: 1504, tipo:"Semestral",teorica:15,teorica_pratica:15,pratica_laboratoriais:15,trabalho_campo:10,seminarios:3,orientacao_tutorial:2,estudo:55,trabalho_grupo:35,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Plano de Marketing", area_cientifica:"Marketing", anocurricular: 3 , semestre: 1 , creditos: 6 , codigouc: 1505, tipo:"Semestral",pratica_laboratoriais:15,trabalho_campo:25,orientacao_tutorial:5,estudo:20,trabalho_projecto:85,horas_avaliacao:6,cursos_id: 1)
Category.create(nome:"Gestão de Vendas", area_cientifica:"Marketing", anocurricular: 3 , semestre: 1 , creditos: 6 , codigouc: 1506, tipo:"Semestral",teorica:15,teorica_pratica:20,pratica_laboratoriais:8,trabalho_campo:10,seminarios:5,orientacao_tutorial:2,estudo:40,trabalho_grupo:30,trabalho_projecto:20,horas_avaliacao:6,cursos_id: 1)
# Terceiro Ano - Segundo Semestre
Category.create(nome:"Sistemas de Informação", area_cientifica:"Métodos Quantitativos", anocurricular: 3 , semestre: 2 , creditos: 6 , codigouc: 1602, tipo:"Semestral",teorica:15,teorica_pratica:10,pratica_laboratoriais:25,trabalho_campo:8,orientacao_tutorial:2,estudo:45,trabalho_grupo:20,horas_avaliacao:5,cursos_id: 1)
Category.create(nome:"Gestão de Pessoas", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 3 , semestre: 2 , creditos: 6 , codigouc: 1603, tipo:"Semestral",teorica:10,teorica_pratica:15,pratica_laboratoriais:5,trabalho_campo:10,seminarios:3,orientacao_tutorial:2,estudo:45,trabalho_grupo:35,horas_avaliacao:5,cursos_id: 1)
Category.create(nome:"Comportamento de Compra e Venda", area_cientifica:"Marketing", anocurricular: 3 , semestre: 2 , creditos: 6 , codigouc: 1605, tipo:"Semestral",teorica:10,teorica_pratica:15,pratica_laboratoriais:5,trabalho_campo:10,seminarios:3,orientacao_tutorial:2,estudo:45,trabalho_grupo:35,horas_avaliacao:5,cursos_id: 1)
Category.create(nome:"Estágio (Marketing ou Consumo)", area_cientifica:"Marketing", anocurricular: 3 , semestre: 2 , creditos: 15 , codigouc: 1606, tipo:"Semestral",teorica_pratica:10,seminarios:5, estagio:360,orientacao_tutorial:14,horas_avaliacao:1,cursos_id: 1)



#Primeiro Ano- Primeiro Semestre
Category.create(nome:"Marketing Estratégico", area_cientifica:"Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M116", tipo:"Semestral", teorica: 9, teorica_pratica: 12,pratica_laboratoriais:10, trabalho_campo: 9, seminarios: 3,orientacao_tutorial:2, estudo: 25, trabalho_grupo: 40, horas_avaliacao: 6,trabalho_projecto:40, cursos_id: 2 )
Category.create(nome:"Liderança e Negociação", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M115", tipo:"Semestral", teorica: 9, teorica_pratica: 13, trabalho_campo: 9,pratica_laboratoriais:10,seminarios: 2, orientacao_tutorial: 2, estudo: 50 ,trabalho_grupo: 30, horas_avaliacao: 6,trabalho_projecto:25, cursos_id: 2)
Category.create(nome:"Direito dos Negócios", area_cientifica:"Economia de Gestão", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M114", tipo:"Semestral" ,teorica: 9, teorica_pratica:14,pratica_laboratoriais: 9, trabalho_campo: 9, orientacao_tutorial: 2, seminarios: 2 , estudo: 40, trabalho_grupo: 40,trabalho_projecto: 25, horas_avaliacao: 6,cursos_id: 2)
Category.create(nome:"Gestão  de Projectos de investimento", area_cientifica:"Economia de Gestão", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M113", tipo:"Semestral",teorica:8, teorica_pratica:15,pratica_laboratoriais: 10, trabalho_campo:8, seminarios:2, orientacao_tutorial:2, estudo:15,trabalho_grupo:45,trabalho_projecto:45, horas_avaliacao:6 ,cursos_id: 2)
Category.create(nome:"Simulador de Gestão de Marketing", area_cientifica:"Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M111", tipo:"Semestral",pratica_laboratoriais:40,seminarios:5,estudo:16,trabalho_grupo:40,trabalho_projecto:45,horas_avaliacao:10,cursos_id: 2)

#Primeiro Ano- Segundo Semestre
Category.create(nome:"Desenho de Projecto", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 1 , semestre: 2 , creditos: 12 , codigouc:"M124" , tipo:"Semestral",teorica:10,teorica_pratica:15,pratica_laboratoriais:8,trabalho_campo:6,seminarios:4,orientacao_tutorial:2,estudo:100,trabalho_grupo:80,trabalho_projecto:80,horas_avaliacao:7,cursos_id: 2)
Category.create(nome:"Consumo", area_cientifica:"Marketing", anocurricular: 1 , semestre: 2 , creditos: 9 , codigouc:"M139" , tipo:"Semestral",teorica:22,teorica_pratica:22,trabalho_campo:10,seminarios:4,orientacao_tutorial:2,estudo:140,trabalho_grupo:130,trabalho_projecto:124,horas_avaliacao:14,cursos_id: 2)
Category.create(nome:"Markeing Relacional", area_cientifica:"Marketing", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: "M125", tipo:"Semestral",teorica:10,teorica_pratica:16,pratica_laboratoriais:14,trabalho_campo:12,orientacao_tutorial:2,seminarios:6,estudo:30,trabalho_grupo:30,trabalho_projecto:30,horas_avaliacao:6,cursos_id: 2)
Category.create(nome:"Economia do Consumo", area_cientifica:"Ecnomia e Gestão", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: "M126", tipo:"Semestral",teorica:9,teorica_pratica:12,pratica_laboratoriais:10,trabalho_campo:9,orientacao_tutorial:2,seminarios:3,estudo:25,trabalho_grupo:40,trabalho_projecto:40,horas_avaliacao:6,cursos_id: 2)
Category.create(nome:"Sistemas de Análise e Apoio à Decisão", area_cientifica:"Métodos Quantitativos", anocurricular: 1 , semestre: 2, creditos: 6 , codigouc: "M123", tipo:"Semestral",teorica:7,teorica_pratica:12,pratica_laboratoriais:8,trabalho_campo:14,orientacao_tutorial:2,seminarios:2,estudo:15,trabalho_grupo:45,trabalho_projecto:45,horas_avaliacao:6,cursos_id: 2)

# Segundo Ano - Primeiro Semestre
Category.create(nome:"Novas Tendências de Marketing", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: "M121", tipo:"Semestral",teorica:12, teorica_pratica:16,pratica_laboratoriais:12, trabalho_campo:13,seminarios:5, orientacao_tutorial:2, estudo:140,trabalho_grupo:130,trabalho_projecto:124,horas_avaliacao:14,cursos_id: 2)
Category.create(nome:"Branding", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 9 , codigouc: "M137", tipo:"Semestral",teorica:19,teorica_pratica:19, pratica_laboratoriais:9, seminarios:9, orientacao_tutorial:4,estudo:140,trabalho_grupo:130,trabalho_projecto:124,horas_avaliacao:14,cursos_id: 2)
Category.create(nome:"Direção Comercial e Vendar", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 9 , codigouc: "M138", tipo:"Semestral",teorica:22,teorica_pratica:22,trabalho_campo:10,orientacao_tutorial:2,seminarios:4,estudo:140,trabalho_grupo:130,trabalho_projecto:124,horas_avaliacao:14,cursos_id: 2)
Category.create(nome:"Novas Tendências de Marketing", area_cientifica:"Marketing", anocurricular: 2 , semestre: 1 , creditos: 6 , codigouc: "M121", tipo:"Semestral",teorica:12,teorica_pratica:16,trabalho_campo:13,pratica_laboratoriais:13,orientacao_tutorial:2,seminarios:5,estudo:140,trabalho_grupo:130,trabalho_projecto:124,horas_avaliacao:14,cursos_id: 2)
#Segundo Ano - Segundo Semestre
Category.create(nome:"Dissertação/Projeto Profissional/Estágio Profissional", area_cientifica:"Marketing", anocurricular: 2 , semestre: 2 , creditos: 30 , codigouc: "M142", tipo:"Anual",teorica_pratica:30,seminarios:10,orientacao_tutorial:20,estudo:518,trabalho_projecto:504,horas_avaliacao:10,cursos_id: 2)



# Primeiro Ano - Primeiro Semestre

Category.create(nome:"Gestão Integrada do Design", area_cientifica:"Ciências do Design", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M10311", tipo:"Semestral", teorica_pratica: 30 ,  cursos_id: 3 )
Category.create(nome:"Design Thinking", area_cientifica:"Ciências do Design", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M10312", tipo:"Semestral", teorica_pratica: 30, cursos_id: 3)
Category.create(nome:"Comportamento do Consumidor", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M10313", tipo:"Semestral" ,teorica_pratica:30,cursos_id: 3)
Category.create(nome:"Marketing", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 1 , creditos: 6 , codigouc: "M10314", tipo:"Semestral", teorica_pratica:30,cursos_id: 3)
Category.create(nome:"Metodologia de Investigação", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 1 , semestre: 1 , creditos: 3 , codigouc: "M10315", tipo:"Semestral",teorica:15 ,cursos_id: 3)
Category.create(nome:"Empreendedorismo e Acesso a Financiamento", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 1 , creditos: 3 , codigouc:"M10316", tipo:"Semestral",teorica:15,cursos_id: 3)
Category.create(nome:"Gestão Financeira de Projectos", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 1 , creditos: 3 , codigouc:"M10317" , tipo:"Semestral",teorica:15,cursos_id: 3)
#Primeiro Ano- Segundo Semestre

Category.create(nome:"Branding e Gestão da Comunicação", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: "M10321", tipo:"Semestral",teorica_pratica:30,cursos_id: 3)
Category.create(nome:"Gestão da Cadeia de Valor", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: "M10322", tipo:"Semestral",teorica_pratica:30,cursos_id: 3)
Category.create(nome:"Planificação e Direção Estratégica", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 2, creditos: 6 , codigouc: "M10323", tipo:"Semestral",teorica_pratica:30, cursos_id:3)
Category.create(nome:"Service Design", area_cientifica:"Ciências do Design", anocurricular: 1 , semestre: 2 , creditos: 6 , codigouc: "M10324", tipo:"Semestral",teorica_pratica:30,cursos_id: 3)
Category.create(nome:"Liderança e Negociação", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 2 , creditos: 3 , codigouc: "M10325", tipo:"Semestral",teorica:15,cursos_id: 3)
Category.create(nome:"Design e Sustentabilidade", area_cientifica:"Ciências do Design", anocurricular: 1 , semestre: 2 , creditos: 3 , codigouc: "M10326", tipo:"Semestral",teorica:15,cursos_id: 3)
Category.create(nome:"Inovação e Propriedade Intelectual", area_cientifica:"Ciências do Marketing", anocurricular: 1 , semestre: 2 , creditos: 3 , codigouc: "M10327", tipo:"Semestral",teorica:15,cursos_id: 3)
# Segundo Ano - Primeiro Semestre

Category.create(nome:"Tese/Projeto/Relatório de Estágio em Gestão do Design", area_cientifica:"Ciências Design", anocurricular: 2 , semestre: 1, creditos: 24 , codigouc: "M10331", tipo:"Semestral",orientacao_tutorial:15,cursos_id: 3)
Category.create(nome:"Seminários Temáticos", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 2 , semestre: 1, creditos: 3 , codigouc: "M10332", tipo:"Semestral",seminarios:15,cursos_id: 3)
Category.create(nome:"Investigação Aplicada", area_cientifica:"Ciências Sociais e Humanas", anocurricular: 2 , semestre: 1, creditos: 3 , codigouc: "M10333", tipo:"Semestral",teorica:15,cursos_id: 3)

#Segundo Ano - Segundo Semestre

Category.create(nome:"Tese/Projeto/Relatório de Estágio em Gestão do Design", area_cientifica:"Ciências Design", anocurricular: 2 , semestre: 2, creditos: 30 , codigouc: "M10331", tipo:"Semestral",orientacao_tutorial:15,cursos_id: 3)

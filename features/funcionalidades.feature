#language: pt
#utf-8

Funcionalidade: Criar nova task

Eu como usuario
Quero cadastrar uma task
Para uso quando necessário

Contexto: 
	Dado que eu esteja no site SuiteCRM logado com usuário e senha
	E acessado a pagina inicial


Esquema do Cenario: Registrar uma nova task
		Quando acessado a opção de criar nova <task>
		Entao a task sera cadastrada com sucesso  <lista>

		Exemplos:
| task   | lista  |
| Acordar| Acordar|
| Sonhar | Sonhar |
| Viver  | Viver  |



Cenário: Editar Task
  	Dado que ao navegar para criar tarefa
    E navegar até a minha lista de Tarefas
    Então quero editar minha tarefa 
	  E salvar a tarefa atualizada     
 
Cenário: Deletar Task      
   	Dado que ao navegar para criar tarefa
    E navegar até a minha lista de Tarefas
    Então quero deletar a tarefa
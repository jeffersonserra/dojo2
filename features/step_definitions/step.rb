Dado(/^que eu esteja no site SuiteCRM logado com usuário e senha$/) do
  @AcessPage = AcessPage.new
  @AcessPage.load
  @AcessPage.login('will','will')
end

Dado(/^acessado a pagina inicial$/) do
  assert_text('SUITECRM DASHBOARD')
end

Quando(/^acessado a opção de criar nova Acordar$/) do
  @home =  Home.new
  @home.createMenu.click
  @home.createMenuList.click
end

Entao(/^a task sera cadastrada com sucesso  Acordar$/) do
 @register = Register.new
  find('#name')
  Register.new.subject.set "Acordar"
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click
  @register.saveButton[1].click
    assert_text('Acordar')
end

Quando(/^acessado a opção de criar nova Sonhar$/) do
  @home =  Home.new
  @home.createMenu.click
  @home.createMenuList.click
  @register = Register.new
      find('#name')
      Register.new.subject.set "Sonhar"
      find(:xpath,'//option[@value = "In Progress"]').click
      find(:xpath,'//option[@value = "High"]').click
      fill_in('description', :with => 'tá difícil')
      @register.saveButton[1].click
end

Entao(/^a task sera cadastrada com sucesso  Sonhar$/) do
  assert_text('Sonhar')
  #module-title-text
end

Quando(/^acessado a opção de criar nova Viver$/) do
  @home =  Home.new
  @home.createMenu.click
  @home.createMenuList.click
      @register = Register.new
      find('#name')
      Register.new.subject.set "Viver"
      find(:xpath,'//option[@value = "Pending Input"]').click
      find(:xpath,'//option[@value = "High"]').click
      fill_in('contact_name', :with => 'Jefferson Serra')
      @register.saveButton[1].click
end

Entao(/^a task sera cadastrada com sucesso  Viver$/) do
 assert_text('Viver')
end

Dado(/^que ao navegar para criar tarefa$/) do
 @home =  Home.new
end

Dado(/^navegar até a minha lista de Tarefas$/) do
  click_link('Activities') 
  find(:xpath,'//*[@id="moduleTab_6_Tasks"]').click
  #binding.pry
end

Então(/^quero editar minha tarefa$/) do
  click_link('moduleTab_Tasks')
  find(:xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr[5]/td[4]/b/a").click
  find(:xpath,"//*[@id='tab-actions']/a").click
  click_button('edit_button')
  @register = Register.new
  @register.subject.set "Viver"
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click

end

Então(/^salvar a tarefa atualizada$/) do
  @register.saveButton[1].click
  assert_text('Viver')
end

Então(/^quero deletar a tarefa$/) do
 #binding.pry
 click_link('moduleTab_Tasks')
 find(:xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr[5]/td[4]/b/a").click
 find(:xpath,"//*[@id='tab-actions']/a").click
 click_button('Delete')
 page.driver.browser.switch_to.alert.accept
 #binding.pry
end
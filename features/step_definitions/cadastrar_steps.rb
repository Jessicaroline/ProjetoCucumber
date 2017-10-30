Dado("que esteja na tela de cadastro") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with=>'Admin')
  fill_in('txtPassword',:with=>'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Dado("efetue o cadastro com dados validos") do
  fill_in('firstName',:with=>'Geraldo')
  fill_in('middleName',:with=>'Souza')
  fill_in('lastName',:with=>'Antunes')  
  click_button('btnSave')
end

Entao("o cadastro efetuado com sucesso") do
  assert_text('Personal Details')
end
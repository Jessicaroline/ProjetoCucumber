Dado("que esteja na tela de usuarios") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with=>'Admin')
  fill_in('txtPassword',:with=>'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Dado("efetue o alteracao dos dados") do
  click_link('Linda')
  click_button('Edit')
  fill_in('personal[txtEmpMiddleName]',:with=>'Souza', wait: 1)
  click_button('btnSave')
end

Entao("o alteracao efetuada com sucesso") do
  assert_text('Successfully Saved')
end
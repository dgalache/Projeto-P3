feature 'Gerenciar Fornecedor' do

  scenario 'Incluir Fornecedor' do 
    visit new_fornecedor_path
    preencher_e_verificar_fornecedor
  end

  scenario 'Alterar Fornecedor' do 
    fornecedor = FactoryGirl.create(:fornecedor)
    visit edit_fornecedor_path(fornecedor)
    preencher_e_verificar_fornecedor

  end

   scenario 'Excluir Fornecedor' do 
    fornecedor = FactoryGirl.create(:fornecedor)
    visit fornecedores_path
    click_link('Destroy')

  end

  def preencher_e_verificar_fornecedor

    fill_in 'Nome Fornecedor',     :with => "Pif Paf"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Pif Paf'
  end
end
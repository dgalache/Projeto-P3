feature 'Gerenciar Produto' do

  before(:each) do
    @estoque = create(:estoque, nome: "Laticínio")
  end

  let(:dados) do {
    nome: "Margarina",
    unidade: 10,
    setor: "A-01",
    valor_referencia: 2.50,
    valor_venda: 3.50,
    saldo: 15,
    estoque: "Laticínio",
   }
  end

  scenario 'Incluir Produto' do #, :js => true  do
    visit new_produto_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Produto' do #, :js => true  do
    produto = FactoryGirl.create(:produto, estoque: @estoque)
    visit edit_produto_path(produto)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Produto' do #, :js => true  do
    produto = FactoryGirl.create(:produto, estoque: @estoque)
    visit produtos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Unidade',  with: dados[:unidade]
    fill_in 'Setor',  with: dados[:setor]
    fill_in 'Valor Referencia',  with: dados[:valor_referencia]
    fill_in 'Valor Venda',  with: dados[:valor_venda]
    fill_in 'Saldo',  with: dados[:saldo]
    select dados[:estoque], from: "Nome Estoque"
  end
 
  def verificar(dados)
    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Unidade: #{dados[:unidade]}"
    page.should have_content "Setor: #{dados[:setor]}"
    page.should have_content "Valor referencia: #{dados[:valor_referencia]}"
    page.should have_content "Valor venda: #{dados[:valor_venda]}"
    page.should have_content "Saldo: #{dados[:saldo]}"
    page.should have_content "Estoque: #{dados[:estoque]}"
  end
end
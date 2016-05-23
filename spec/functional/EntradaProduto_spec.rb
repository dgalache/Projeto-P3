feature 'Gerenciar EntradaProduto' do

  before(:each) do
    @fornecedor = create(:fornecedor, nome: "Pif Paf")
    @itemProduto = create(:itemProduto, quantidade: "10")
  end

  let(:dados) do {
    data: "01/01/2016",
    utilizador: "João",
    itemProduto: "10",
    nome: "Pif Paf"
   }
  end

  scenario 'Incluir EntradaProduto' do #, :js => true  do
    visit new_entrada_produto_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterr EntradaProduto' do #, :js => true  do
    entrada_produto = FactoryGirl.create(:entrada_produto, fornecedor: @fornecedor, itemProduto: @itemProduto)
    visit edit_entrada_produto_path(entrada_produto)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir EntradaProduto' do #, :js => true  do
    entrada_produto = FactoryGirl.create(:entrada_produto, fornecedor: @fornecedor, itemProduto: @itemProduto)
    visit entrada_produtos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    fill_in 'Data Entrada',  with: dados[:data]
    fill_in 'Utilizador',  with: dados[:utilizador]
    select dados[:quantidade], from: "Quantidade" 
    select dados[:nome], from: "ome Fornecedor"
  end
 
  def verificar(dados)
    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Utilizador: #{dados[:utilizador]}"
    page.should have_content "Itemproduto: #{dados[:quantidade]}"
    page.should have_content "Fornecedor: #{dados[:nome]}"
  end
end
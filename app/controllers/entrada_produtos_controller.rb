class EntradaProdutosController < ApplicationController
  before_action :set_entrada_produto, only: [:show, :edit, :update, :destroy]

  # GET /entrada_produtos
  # GET /entrada_produtos.json
  def index
    @entrada_produtos = EntradaProduto.all
  end

  # GET /entrada_produtos/1
  # GET /entrada_produtos/1.json
  def show
  end

  # GET /entrada_produtos/new
  def new
    @entrada_produto = EntradaProduto.new
  end

  # GET /entrada_produtos/1/edit
  def edit
  end

  # POST /entrada_produtos
  # POST /entrada_produtos.json
  def create
    @entrada_produto = EntradaProduto.new(entrada_produto_params)

    respond_to do |format|
      if @entrada_produto.save
        format.html { redirect_to @entrada_produto, notice: 'Entrada produto was successfully created.' }
        format.json { render :show, status: :created, location: @entrada_produto }
      else
        format.html { render :new }
        format.json { render json: @entrada_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrada_produtos/1
  # PATCH/PUT /entrada_produtos/1.json
  def update
    respond_to do |format|
      if @entrada_produto.update(entrada_produto_params)
        format.html { redirect_to @entrada_produto, notice: 'Entrada produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @entrada_produto }
      else
        format.html { render :edit }
        format.json { render json: @entrada_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrada_produtos/1
  # DELETE /entrada_produtos/1.json
  def destroy
    @entrada_produto.destroy
    respond_to do |format|
      format.html { redirect_to entrada_produtos_url, notice: 'Entrada produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada_produto
      @entrada_produto = EntradaProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrada_produto_params
      params.require(:entrada_produto).permit(:data, :utilizador, :itemProduto_id, :fornecedor_id)
    end
end

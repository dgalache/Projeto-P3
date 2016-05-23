FactoryGirl.define do
  factory :produto do
    nome "MyString"
    unidade 1
    setor "MyString"
    valor_referencia 1.5
    valor_venda 1.5
    saldo 1
    estoque nil
  end
end

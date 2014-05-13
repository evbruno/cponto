json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :ano, :mes, :entrada_manha, :saida_manha, :entrada_tarde, :saida_tarde
  json.url ponto_url(ponto, format: :json)
end

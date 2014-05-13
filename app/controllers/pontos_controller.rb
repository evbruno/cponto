class PontosController < ApplicationController
	
	def hoje
		hoje = Date.today
		@ano = hoje.year
		@mes = hoje.month
		@dias = Ponto.build(Ponto.new(ano: @ano, mes: @mes))
	end

end


class PontosController < ApplicationController
	
	def hoje
		hoje = Date.today
		@ano = hoje.year
		@mes = hoje.month
		desenha_ponto
	end

	def calcula
		@ano = params[:ano].to_i
		@mes = params[:mes].to_i
		desenha_ponto
	end

	private

		def desenha_ponto
			@dias = Ponto.build(Ponto.new(ano: @ano, mes: @mes))
			calcula_paginacao
				
			render 'ponto'
		end

		def calcula_paginacao
			if @mes == 12
				@mes_prox = 1
				@ano_prox = @ano + 1
				@mes_ant = 11
				@ano_ant = @ano
			elsif @mes == 1
				@mes_prox = 2
				@ano_prox = @ano
				@mes_ant = 12
				@ano_ant = @ano - 1
			else
				@mes_prox = @mes + 1
				@ano_prox = @ano
				@mes_ant = @mes - 1
				@ano_ant = @ano
			end

		end
end

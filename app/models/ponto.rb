class Ponto < ActiveRecord::Base

	def self.build(ponto)
		dias = []
		ultimo_dia = Time.days_in_month(ponto.mes, ponto.ano)
		for dia_idx in 1..ultimo_dia do
			dias << Dia.new(
				Date.new(ponto.ano, ponto.mes, dia_idx),
				ponto.entrada_manha >> next_rand(5),
				ponto.saida_manha >> next_rand(5),
				ponto.entrada_tarde >> next_rand(5),
				ponto.saida_tarde >> next_rand(5)
			)
		end
		dias
	end

	private

		def self.next_rand(max)
			sign = rand(2).even? ? 1 : -1
			rand(max) * sign
		end

end

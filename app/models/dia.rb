class Dia
	attr_reader :dia, :entrada_manha, :saida_manha, :entrada_tarde, :saida_tarde
	
	def initialize(dia, entrada_manha, saida_manha, entrada_tarde, saida_tarde)
		@dia = dia
		@entrada_manha = entrada_manha
		@saida_manha = saida_manha
		@entrada_tarde = entrada_tarde
		@saida_tarde = saida_tarde
	end

end
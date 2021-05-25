require 'date'

class Dia
	attr_reader :dia, :entrada_manha, :saida_manha, :entrada_tarde, :saida_tarde
	
	def initialize(dia, entrada_manha, saida_manha, entrada_tarde, saida_tarde)
		@dia = dia
		@entrada_manha = entrada_manha
		@saida_manha = saida_manha
		@entrada_tarde = entrada_tarde
		@saida_tarde = saida_tarde
	end

	def fim_de_semana?
		@dia.sunday? or @dia.saturday?
	end

	def holiday(region = :br)
		@holiday ||= Holidays.on(@dia, norm_region(region)).first
	end

	def holiday?(region = :br)
		not holiday(norm_region(region)).nil?
	end

	private

	def norm_region(r)
		return :us if r == :en
		return :br if r.nil?
		r
	end

end
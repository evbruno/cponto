
class PontosController < ApplicationController

	before_action :set_hoje, :set_locale
	
	def hoje
		@ano = @hoje.year
		@mes = @hoje.month
		desenha_ponto
	end

	def calcula
		@ano = params[:ano].to_i
		@mes = params[:mes].to_i
		desenha_ponto
	end

	def atualiza_locale
		locale = params[:locale].to_sym
		locale = I18n.available_locales.include?(locale) ? locale : :pt

		session[:my_locale] = locale
		logger.debug "* Locale updated to '#{I18n.locale}'"

		if request.env['HTTP_REFERER'] =~ /.*\/(\d{4})\/(\d{1,2})$/
			redirect_to calcula_ponto_url($1, $2)
		else
			redirect_to root_url
		end
	end

	private

		def mes_atual?
			request.path == '/' || ( @ano == @hoje.year && @mes == @hoje.month)
		end
		helper_method :mes_atual?

		def embromation?
			I18n.locale != :pt
		end
		helper_method :embromation?

		def set_hoje
			@hoje = Date.today
		end

		def set_locale
			#logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
  			#I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  			
  			locale = (session[:my_locale] || 'pt').to_sym
			I18n.locale = I18n.available_locales.include?(locale) ? locale : :pt

  			logger.debug "* Locale set to '#{I18n.locale}'"
		end

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

Cponto2::Application.routes.draw do

	root 'pontos#hoje'
	get '/:ano/:mes', to: 'pontos#calcula', as: 'calcula_ponto'
	post '/locale/:locale', to: 'pontos#atualiza_locale', as: 'atualiza_locale'
end

class PagesController < ApplicationController
  def batman

  end

  def superman

  end

  def batman_vs_superman
	#@votos_batman = VotosBatman.new
	@i_batman = VotosBatman.all
	
	#@votos_superman = VotosSuperman.new
	@i_superman = VotosSuperman.all
  end

	def add_votos_batman
		if params[:name].present? && params[:email].present?
			@votos_batman = VotosBatman.new(name: params[:name], email: params[:email])
			@votos_batman.save
			redirect_to pages_batman_vs_superman_path, notice: "Gracias por tu Voto"
		else
			redirect_to pages_batman_vs_superman_path, alert: "Ingresa todos los Datos"
		end
	end

	def add_votos_superman
		if params[:name].present? && params[:email].present?
			@votos_superman = VotosSuperman.new(name: params[:name], email: params[:email])
			@votos_superman.save
			redirect_to pages_batman_vs_superman_path, notice: "Gracias por tu Voto"
		else
			redirect_to pages_batman_vs_superman_path, alert: "Ingresa todos los Datos"
		end
	end

end

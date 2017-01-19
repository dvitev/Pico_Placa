class PplacasController < ApplicationController
  def index
  	@pplaca = Pplaca.all
  end
  def new
  end
  def create
  	@pplaca = Pplaca.new(pplaca_params)
  	#@pplaca.save
  	if @pplaca.save
    	redirect_to @pplaca
  	else
    	render 'new'
  	end
  	#redirect_to @pplaca
  	#render plain: params[:pplaca].inspect
  end
  def edit
  	@pplaca=Pplaca.find(params[:id])
  end
  def update
  	@pplaca = Pplaca.find(params[:id])
  	if @pplaca.update(pplaca_params)
  		redirect_to @pplaca
  	else
  		render 'edit'
  	end
  end
  def show
  	@pplaca = Pplaca.find(params[:id])
  end
  def destroy
  	@pplaca = Pplaca.find(params[:id])
  	@pplaca.destroy

  	redirect_to pplacas_path
  end
  private
  	def pplaca_params
  		params.require(:pplaca).permit(:placa,:fecha,:hora)
  	end
end

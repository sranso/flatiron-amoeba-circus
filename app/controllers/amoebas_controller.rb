class AmoebasController < ApplicationController
  def index
    @amoebas = Amoeba.all
  end

  def show
    @amoeba = Amoeba.find(params[:id])
  end

  def new
    @amoeba = Amoeba.new
  end

  def create
    @amoeba = Amoeba.new(params[:amoeba])

    if @amoeba.save
      redirect_to @amoeba
    end
  end

  def update
    @amoeba = Amoeba.find(params[:id])
  end

  def split
    amoeba = Amoeba.find(params[:baby_maker])
    @split_amoeba = amoeba.split
  end
end

class ActsController < ApplicationController
  def index
    @acts = Act.all
  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new(params[:act])
    if @act.save
      redirect_to @act
    end
  end

end
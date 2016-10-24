class PtosController < ApplicationController
  def index
    @ptos = Pto.all
  end

  def show
    @pto = Pto.find(params[:id])
  end

  def new
    @pto = Pto.new
  end

  def create
    @pto = Pto.new
    @pto.image = params[:image]
    @pto.caption = params[:caption]
    @pto.owner_id = params[:owner_id]

    if @pto.save
      redirect_to "/ptos", :notice => "Pto created successfully."
    else
      render 'new'
    end
  end

  def edit
    @pto = Pto.find(params[:id])
  end

  def update
    @pto = Pto.find(params[:id])

    @pto.image = params[:image]
    @pto.caption = params[:caption]
    @pto.owner_id = params[:owner_id]

    if @pto.save
      redirect_to "/ptos", :notice => "Pto updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @pto = Pto.find(params[:id])

    @pto.destroy

    redirect_to "/ptos", :notice => "Pto deleted."
  end
end

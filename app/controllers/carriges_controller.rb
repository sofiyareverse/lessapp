class CarrigesController < ApplicationController
  before_action :set_carrige, only: %i[show edit update destroy]
  before_action :set_train, only: %i[new create]

  def index
    @carriges = Carrige.all
  end

  def show; end

  def new
    @carrige = @train.carriges.new
  end

  def edit; end

  def create
    @carrige = Carrige.new(carrige_params)

    respond_to do |format|
      if @carrige.save
        format.html { redirect_to train_carrige_path(train_id: @carrige.train_id, id: @carrige.id),
          notice: 'Carrige was successfully created.' }
        format.json { render :show, status: :created, location: @carrige }
      else
        format.html { render :new }
        format.json { render json: @carrige.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @carrige.update(carrige_params)
        format.html { redirect_to @carrige, notice: 'Carrige was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrige }
      else
        format.html { render :edit }
        format.json { render json: @carrige.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @carrige.destroy
    respond_to do |format|
      format.html { redirect_to carriges_url, notice: 'carrige was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_carrige
    @carrige = Carrige.find(params[:id])
  end

  def carrige_params
    params.require(:carrige).permit(
      :train_id,
      :carrige_type,
      :up_sits,
      :down_sits,
      :side_up_sits,
      :side_down_sits,
      :sitting_sits
    )
  end
end

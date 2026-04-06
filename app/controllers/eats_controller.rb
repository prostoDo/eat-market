class EatsController < ApplicationController
  before_action :set_eat, only: %i[ show edit update destroy ]

  # GET /eats or /eats.json
  def index
    @eats = Eat.all
  end

  # GET /eats/1 or /eats/1.json
  def show
  end

  # GET /eats/new
  def new
    @eat = Eat.new
  end

  # GET /eats/1/edit
  def edit
  end

  # POST /eats or /eats.json
  def create
    @eat = Eat.new(eat_params)

    respond_to do |format|
      if @eat.save
        format.html { redirect_to @eat, notice: "Eat was successfully created." }
        format.json { render :show, status: :created, location: @eat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eats/1 or /eats/1.json
  def update
    respond_to do |format|
      if @eat.update(eat_params)
        format.html { redirect_to @eat, notice: "Eat was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @eat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eats/1 or /eats/1.json
  def destroy
    @eat.destroy!

    respond_to do |format|
      format.html { redirect_to eats_path, notice: "Eat was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eat
      @eat = Eat.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def eat_params
      params.expect(eat: [ :name, :price, :description ])
    end
end

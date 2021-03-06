class DirectorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  # GET /directors
  # GET /directors.json
  def index
    @directors = Director.order(movies_count: :desc, name: :asc).sort do |a, b| 
      res = (a.movies_size_all <=> b.movies_size_all) * -1
      res != 0 ? res : a.name <=> b.name
    end
  end

  # GET /directors/1
  # GET /directors/1.json
  def show
    @movies = Movie.where(director: @director)
                   .or(Movie.where(director2: @director))
                   .or(Movie.where(director3: @director))
                   .or(Movie.where(director4: @director))
                   .or(Movie.where(director5: @director))
                   .order(:release_date)
                   .includes(:series)
  end

  # GET /directors/new
  def new
    @director = Director.new
  end

  # GET /directors/1/edit
  def edit
  end

  # POST /directors
  # POST /directors.json
  def create
    @director = Director.new(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directors/1
  # PATCH/PUT /directors/1.json
  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to @director, notice: 'Director was successfully updated.' }
        format.json { render :show, status: :ok, location: @director }
      else
        format.html { render :edit }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directors/1
  # DELETE /directors/1.json
  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directors_url, notice: 'Director was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def director_params
      params.require(:director).permit(:name, :original_name)
    end
end

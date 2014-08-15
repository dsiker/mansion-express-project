class PersonalityTraitsController < ApplicationController
  before_action :set_personality_trait, only: [:show, :edit, :update, :destroy]

  # GET /personality_traits
  # GET /personality_traits.json
  def index
    @personality_traits = PersonalityTrait.all
  end

  # GET /personality_traits/1
  # GET /personality_traits/1.json
  def show
  end

  # GET /personality_traits/new
  def new
    @personality_trait = PersonalityTrait.new
  end

  # GET /personality_traits/1/edit
  def edit
  end

  # POST /personality_traits
  # POST /personality_traits.json
  def create
    @personality_trait = PersonalityTrait.new(personality_trait_params)

    respond_to do |format|
      if @personality_trait.save
        format.html { redirect_to @personality_trait, notice: 'Personality trait was successfully created.' }
        format.json { render :show, status: :created, location: @personality_trait }
      else
        format.html { render :new }
        format.json { render json: @personality_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personality_traits/1
  # PATCH/PUT /personality_traits/1.json
  def update
    respond_to do |format|
      if @personality_trait.update(personality_trait_params)
        format.html { redirect_to @personality_trait, notice: 'Personality trait was successfully updated.' }
        format.json { render :show, status: :ok, location: @personality_trait }
      else
        format.html { render :edit }
        format.json { render json: @personality_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personality_traits/1
  # DELETE /personality_traits/1.json
  def destroy
    @personality_trait.destroy
    respond_to do |format|
      format.html { redirect_to personality_traits_url, notice: 'Personality trait was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personality_trait
      @personality_trait = PersonalityTrait.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personality_trait_params
      params[:personality_trait]
    end
end

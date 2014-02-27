class ClaassesController < ApplicationController
  # GET /claasses
  # GET /claasses.json
  def index
    @claasses = Claass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @claasses }
    end
  end

  # GET /claasses/1
  # GET /claasses/1.json
  def show
    @claass = Claass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @claass }
    end
  end

  # GET /claasses/new
  # GET /claasses/new.json
  def new
    @claass = Claass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @claass }
    end
  end

  # GET /claasses/1/edit
  def edit
    @claass = Claass.find(params[:id])
  end

  # POST /claasses
  # POST /claasses.json
  def create
    @claass = Claass.new(params[:claass])

    respond_to do |format|
      if @claass.save
        format.html { redirect_to @claass, notice: 'Claass was successfully created.' }
        format.json { render json: @claass, status: :created, location: @claass }
      else
        format.html { render action: "new" }
        format.json { render json: @claass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /claasses/1
  # PUT /claasses/1.json
  def update
    @claass = Claass.find(params[:id])

    respond_to do |format|
      if @claass.update_attributes(params[:claass])
        format.html { redirect_to @claass, notice: 'Claass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @claass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claasses/1
  # DELETE /claasses/1.json
  def destroy
    @claass = Claass.find(params[:id])
    @claass.destroy

    respond_to do |format|
      format.html { redirect_to claasses_url }
      format.json { head :no_content }
    end
  end
end

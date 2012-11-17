class XfilesController < ApplicationController
  # GET /xfiles
  # GET /xfiles.json
  def index
    @xfiles = Xfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @xfiles }
    end
  end

  # GET /xfiles/1
  # GET /xfiles/1.json
  def show
    @xfile = Xfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @xfile }
    end
  end

  # GET /xfiles/new
  # GET /xfiles/new.json
  def new
    @xfile = Xfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @xfile }
    end
  end

  # GET /xfiles/1/edit
  def edit
    @xfile = Xfile.find(params[:id])
  end

  # POST /xfiles
  # POST /xfiles.json
  def create
    @xfile = Xfile.new(params[:xfile])

    respond_to do |format|
      if @xfile.save
        format.html { redirect_to @xfile, notice: 'Xfile was successfully created.' }
        format.json { render json: @xfile, status: :created, location: @xfile }
      else
        format.html { render action: "new" }
        format.json { render json: @xfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /xfiles/1
  # PUT /xfiles/1.json
  def update
    @xfile = Xfile.find(params[:id])

    respond_to do |format|
      if @xfile.update_attributes(params[:xfile])
        format.html { redirect_to @xfile, notice: 'Xfile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @xfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xfiles/1
  # DELETE /xfiles/1.json
  def destroy
    @xfile = Xfile.find(params[:id])
    @xfile.destroy

    respond_to do |format|
      format.html { redirect_to xfiles_url }
      format.json { head :no_content }
    end
  end
end

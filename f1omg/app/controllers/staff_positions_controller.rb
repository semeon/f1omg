class StaffPositionsController < ApplicationController
  # GET /staff_positions
  # GET /staff_positions.xml
  def index
    @staff_positions = StaffPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @staff_positions }
    end
  end

  # GET /staff_positions/1
  # GET /staff_positions/1.xml
  def show
    @staff_position = StaffPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @staff_position }
    end
  end

  # GET /staff_positions/new
  # GET /staff_positions/new.xml
  def new
    @staff_position = StaffPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @staff_position }
    end
  end

  # GET /staff_positions/1/edit
  def edit
    @staff_position = StaffPosition.find(params[:id])
  end

  # POST /staff_positions
  # POST /staff_positions.xml
  def create
    @staff_position = StaffPosition.new(params[:staff_position])

    respond_to do |format|
      if @staff_position.save
        flash[:notice] = 'StaffPosition was successfully created.'
        format.html { redirect_to(@staff_position) }
        format.xml  { render :xml => @staff_position, :status => :created, :location => @staff_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @staff_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /staff_positions/1
  # PUT /staff_positions/1.xml
  def update
    @staff_position = StaffPosition.find(params[:id])

    respond_to do |format|
      if @staff_position.update_attributes(params[:staff_position])
        flash[:notice] = 'StaffPosition was successfully updated.'
        format.html { redirect_to(@staff_position) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @staff_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_positions/1
  # DELETE /staff_positions/1.xml
  def destroy
    @staff_position = StaffPosition.find(params[:id])
    @staff_position.destroy

    respond_to do |format|
      format.html { redirect_to(staff_positions_url) }
      format.xml  { head :ok }
    end
  end
end

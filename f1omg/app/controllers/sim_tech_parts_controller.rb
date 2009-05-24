class SimTechPartsController < ApplicationController
  # GET /sim_tech_parts
  # GET /sim_tech_parts.xml
  def index
    @sim_tech_parts = SimTechPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sim_tech_parts }
    end
  end

  # GET /sim_tech_parts/1
  # GET /sim_tech_parts/1.xml
  def show
    @sim_tech_part = SimTechPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sim_tech_part }
    end
  end

  # GET /sim_tech_parts/new
  # GET /sim_tech_parts/new.xml
  def new
    @sim_tech_part = SimTechPart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sim_tech_part }
    end
  end

  # GET /sim_tech_parts/1/edit
  def edit
    @sim_tech_part = SimTechPart.find(params[:id])
  end

  # POST /sim_tech_parts
  # POST /sim_tech_parts.xml
  def create
    @sim_tech_part = SimTechPart.new(params[:sim_tech_part])

    respond_to do |format|
      if @sim_tech_part.save
        flash[:notice] = 'SimTechPart was successfully created.'
        format.html { redirect_to(@sim_tech_part) }
        format.xml  { render :xml => @sim_tech_part, :status => :created, :location => @sim_tech_part }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sim_tech_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sim_tech_parts/1
  # PUT /sim_tech_parts/1.xml
  def update
    @sim_tech_part = SimTechPart.find(params[:id])

    respond_to do |format|
      if @sim_tech_part.update_attributes(params[:sim_tech_part])
        flash[:notice] = 'SimTechPart was successfully updated.'
        format.html { redirect_to(@sim_tech_part) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sim_tech_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sim_tech_parts/1
  # DELETE /sim_tech_parts/1.xml
  def destroy
    @sim_tech_part = SimTechPart.find(params[:id])
    @sim_tech_part.destroy

    respond_to do |format|
      format.html { redirect_to(sim_tech_parts_url) }
      format.xml  { head :ok }
    end
  end
end

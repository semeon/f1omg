class RealTechPartsController < ApplicationController
  # GET /real_tech_parts
  # GET /real_tech_parts.xml
  def index
    @real_tech_parts = RealTechPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @real_tech_parts }
    end
  end

  # GET /real_tech_parts/1
  # GET /real_tech_parts/1.xml
  def show
    @real_tech_part = RealTechPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @real_tech_part }
    end
  end

  # GET /real_tech_parts/new
  # GET /real_tech_parts/new.xml
  def new
    @real_tech_part = RealTechPart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @real_tech_part }
    end
  end

  # GET /real_tech_parts/1/edit
  def edit
    @real_tech_part = RealTechPart.find(params[:id])
  end

  # POST /real_tech_parts
  # POST /real_tech_parts.xml
  def create
    @real_tech_part = RealTechPart.new(params[:real_tech_part])

    respond_to do |format|
      if @real_tech_part.save
        flash[:notice] = 'RealTechPart was successfully created.'
        format.html { redirect_to(@real_tech_part) }
        format.xml  { render :xml => @real_tech_part, :status => :created, :location => @real_tech_part }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @real_tech_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /real_tech_parts/1
  # PUT /real_tech_parts/1.xml
  def update
    @real_tech_part = RealTechPart.find(params[:id])

    respond_to do |format|
      if @real_tech_part.update_attributes(params[:real_tech_part])
        flash[:notice] = 'RealTechPart was successfully updated.'
        format.html { redirect_to(@real_tech_part) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @real_tech_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /real_tech_parts/1
  # DELETE /real_tech_parts/1.xml
  def destroy
    @real_tech_part = RealTechPart.find(params[:id])
    @real_tech_part.destroy

    respond_to do |format|
      format.html { redirect_to(real_tech_parts_url) }
      format.xml  { head :ok }
    end
  end
end

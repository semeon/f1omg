class TechPartTypesController < ApplicationController
  # GET /tech_part_types
  # GET /tech_part_types.xml
  def index
    @tech_part_types = TechPartType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tech_part_types }
    end
  end

  # GET /tech_part_types/1
  # GET /tech_part_types/1.xml
  def show
    @tech_part_type = TechPartType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tech_part_type }
    end
  end

  # GET /tech_part_types/new
  # GET /tech_part_types/new.xml
  def new
    @tech_part_type = TechPartType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tech_part_type }
    end
  end

  # GET /tech_part_types/1/edit
  def edit
    @tech_part_type = TechPartType.find(params[:id])
  end

  # POST /tech_part_types
  # POST /tech_part_types.xml
  def create
    @tech_part_type = TechPartType.new(params[:tech_part_type])

    respond_to do |format|
      if @tech_part_type.save
        flash[:notice] = 'TechPartType was successfully created.'
        format.html { redirect_to(@tech_part_type) }
        format.xml  { render :xml => @tech_part_type, :status => :created, :location => @tech_part_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tech_part_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tech_part_types/1
  # PUT /tech_part_types/1.xml
  def update
    @tech_part_type = TechPartType.find(params[:id])

    respond_to do |format|
      if @tech_part_type.update_attributes(params[:tech_part_type])
        flash[:notice] = 'TechPartType was successfully updated.'
        format.html { redirect_to(@tech_part_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tech_part_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_part_types/1
  # DELETE /tech_part_types/1.xml
  def destroy
    @tech_part_type = TechPartType.find(params[:id])
    @tech_part_type.destroy

    respond_to do |format|
      format.html { redirect_to(tech_part_types_url) }
      format.xml  { head :ok }
    end
  end
end

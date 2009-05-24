class SimStaffsController < ApplicationController
  # GET /sim_staffs
  # GET /sim_staffs.xml
  def index
    @sim_staffs = SimStaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sim_staffs }
    end
  end

  # GET /sim_staffs/1
  # GET /sim_staffs/1.xml
  def show
    @sim_staff = SimStaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sim_staff }
    end
  end

  # GET /sim_staffs/new
  # GET /sim_staffs/new.xml
  def new
    @sim_staff = SimStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sim_staff }
    end
  end

  # GET /sim_staffs/1/edit
  def edit
    @sim_staff = SimStaff.find(params[:id])
  end

  # POST /sim_staffs
  # POST /sim_staffs.xml
  def create
    @sim_staff = SimStaff.new(params[:sim_staff])

    respond_to do |format|
      if @sim_staff.save
        flash[:notice] = 'SimStaff was successfully created.'
        format.html { redirect_to(@sim_staff) }
        format.xml  { render :xml => @sim_staff, :status => :created, :location => @sim_staff }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sim_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sim_staffs/1
  # PUT /sim_staffs/1.xml
  def update
    @sim_staff = SimStaff.find(params[:id])

    respond_to do |format|
      if @sim_staff.update_attributes(params[:sim_staff])
        flash[:notice] = 'SimStaff was successfully updated.'
        format.html { redirect_to(@sim_staff) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sim_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sim_staffs/1
  # DELETE /sim_staffs/1.xml
  def destroy
    @sim_staff = SimStaff.find(params[:id])
    @sim_staff.destroy

    respond_to do |format|
      format.html { redirect_to(sim_staffs_url) }
      format.xml  { head :ok }
    end
  end
end

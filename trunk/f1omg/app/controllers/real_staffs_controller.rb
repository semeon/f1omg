class RealStaffsController < ApplicationController
  # GET /real_staffs
  # GET /real_staffs.xml
  def index
    @real_staffs = RealStaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @real_staffs }
    end
  end

  # GET /real_staffs/1
  # GET /real_staffs/1.xml
  def show
    @real_staff = RealStaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @real_staff }
    end
  end

  # GET /real_staffs/new
  # GET /real_staffs/new.xml
  def new
    @real_staff = RealStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @real_staff }
    end
  end

  # GET /real_staffs/1/edit
  def edit
    @real_staff = RealStaff.find(params[:id])
  end

  # POST /real_staffs
  # POST /real_staffs.xml
  def create
    @real_staff = RealStaff.new(params[:real_staff])

    respond_to do |format|
      if @real_staff.save
        flash[:notice] = 'RealStaff was successfully created.'
        format.html { redirect_to(@real_staff) }
        format.xml  { render :xml => @real_staff, :status => :created, :location => @real_staff }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @real_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /real_staffs/1
  # PUT /real_staffs/1.xml
  def update
    @real_staff = RealStaff.find(params[:id])

    respond_to do |format|
      if @real_staff.update_attributes(params[:real_staff])
        flash[:notice] = 'RealStaff was successfully updated.'
        format.html { redirect_to(@real_staff) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @real_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /real_staffs/1
  # DELETE /real_staffs/1.xml
  def destroy
    @real_staff = RealStaff.find(params[:id])
    @real_staff.destroy

    respond_to do |format|
      format.html { redirect_to(real_staffs_url) }
      format.xml  { head :ok }
    end
  end
end

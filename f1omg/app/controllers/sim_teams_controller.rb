class SimTeamsController < ApplicationController
  # GET /sim_teams
  # GET /sim_teams.xml



  # INDEX -------------------------------------------------------------------------
  def index
    @sim_teams = SimTeam.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sim_teams }
    end
  end

  # SHOW  -------------------------------------------------------------------------
  # GET /sim_teams/1
  # GET /sim_teams/1.xml
  def show
    @sim_team = SimTeam.find( params[:id] )

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sim_team }
    end
  end
 
  # NEW  --------------------------------------------------------------------------
  # GET /sim_teams/1/edit
  # GET /sim_teams/new
  # GET /sim_teams/new.xml
  def new
    respond_to do |format|
      if SimTeam.find_by_user_id( current_user )
          flash[:error] = 'You already own a team.'
          @sim_team = SimTeam.find_by_user_id( current_user )
          format.html { render :action => "yourteam" }
          format.xml  { render :xml => @sim_team.errors, :status => :unprocessable_entity }
      else
          @sim_team = SimTeam.new
          format.html # new.html.erb
          format.xml  { render :xml => @sim_team }
      end
    end
  end

  # EDIT --------------------------------------------------------------------------
  # GET /sim_teams/1/edit
  def edit
    if SimTeam.find_by_user_id( current_user ) == nil
        flash[:notice] = 'Please create a team first.'
        redirect_to createteam_path
    end


    @sim_team = SimTeam.find_by_user_id( current_user )
    @staff_positions = StaffPosition.all
    @part_types = TechPartType.all

    #@text = getYourStaffNameByPositionId(4)

    
    #CEO: position ID = 1
    @sim_ceo = SimStaff.find_by_id(1, :include => [{:real_staff => :staff_position}])
    if @sim_ceo == nil
      @sim_ceo_name = "Not Hired"
    else
      @sim_ceo_name = @sim_ceo.real_staff.name
    end
  
    #CTO: position ID = 2
    @sim_cto = SimStaff.find_by_id(2, :include => [{:real_staff => :staff_position}])
    if @sim_cto == nil
      @sim_cto_name = "Not Hired"
    else
      @sim_cto_name = @sim_cto.real_staff.name
    end

  
  end

  # CREATE -------------------------------------------------------------------------
  # POST /sim_teams
  # POST /sim_teams.xml
  def create
    @sim_team = SimTeam.new(params[:sim_team])
    @sim_team.user_id = current_user
    # TODO - make initial budget configurable
    @sim_team.money = 100000

    #create empty staff
    @staff_positions = StaffPosition.all
    @staff_positions.each do |position|
      @new_staff = SimStaff.new
      @new_staff.sim_team_id = @sim_team.id
    end
    
    #create empty tech parts
    @tech_parts_types = TechPartType.all
    @tech_parts_types.each do |tech_parts_type|
      @new_part = SimStaff.new
      @new_part.sim_team_id = @sim_team.id
    end
    
    
    respond_to do |format|
      if @sim_team.save and @new_staff and @new_part
        flash[:notice] = 'SimTeam was successfully created.'
        format.html { redirect_to(@sim_team) }
        format.xml  { render :xml => @sim_team, :status => :created, :location => @sim_team }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sim_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # UPDATE -------------------------------------------------------------------------
  # PUT /sim_teams/1
  # PUT /sim_teams/1.xml
  def update
    @sim_team = SimTeam.find(params[:id])

    respond_to do |format|
      if @sim_team.update_attributes(params[:sim_team])
        flash[:notice] = 'SimTeam was successfully updated.'
        format.html { redirect_to(@sim_team) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sim_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE -------------------------------------------------------------------------
  # DELETE /sim_teams/1
  # DELETE /sim_teams/1.xml
  def destroy
    @sim_team = SimTeam.find(params[:id])
    @sim_team.destroy

    respond_to do |format|
      format.html { redirect_to(sim_teams_url) }
      format.xml  { head :ok }
    end
  end

  # YOURTEAM -----------------------------------------------------------------------
  def yourteam
    @sim_team = SimTeam.find_by_user_id( current_user )
  end



end

class SimTeamsController < ApplicationController
  # GET /sim_teams
  # GET /sim_teams.xml


  def index
    @sim_teams = SimTeam.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sim_teams }
    end
  end

  # GET /sim_teams/1
  # GET /sim_teams/1.xml
  def show
    @sim_team = SimTeam.find( params[:id] )

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sim_team }
    end
  end

  def yourteam
    @sim_team = SimTeam.find_by_user_id( current_user )
  end

 
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

  # GET /sim_teams/1/edit
  def edit
    if SimTeam.find_by_user_id( current_user ) == nil
        flash[:notice] = 'Please create team first.'
        redirect_to createteam_path
    end
    @sim_team = SimTeam.find_by_user_id( current_user )
    @sim_team_staff = @sim_team.sim_staffs

    
    @staff_positions = StaffPosition.all
    @part_types = TechPartType.all

    #@sim_staff = SimStaff
    #@real_staff = RealStaff
    
    #CEO: position ID = 1
    #@real_ceos = RealStaff.find(:all, :conditions => {:positionId =>  1} ) 
    #@sql_query = "SELECT * FROM sim_staffs ss WHERE ss.real_staff_id IN (SELECT * FROM real_staffs rs WHERE rs.positionId = 1)"
    #@sim_ceo = SimStaff.find_by_sql(@sql_query)
    #flash[:notice] = @sim_ceo.name
    
    #@sim_parts = SimParts
  
  end

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
end

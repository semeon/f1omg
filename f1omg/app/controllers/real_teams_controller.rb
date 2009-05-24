class RealTeamsController < ApplicationController
  # GET /real_teams
  # GET /real_teams.xml
  def index
    @na_message = '--'
    
    @real_teams = RealTeam.all
    @positions = StaffPosition.all
    @part_types = TechPartType.all

    @real_staff = RealStaff
    @real_parts = RealTechPart




    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @real_teams }
    end
  end

  # GET /real_teams/1
  # GET /real_teams/1.xml
  def show
    @real_team = RealTeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @real_team }
    end
  end

  # GET /real_teams/new
  # GET /real_teams/new.xml
  def new
    @real_team = RealTeam.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @real_team }
    end
  end

  # GET /real_teams/1/edit
  def edit
    @real_team = RealTeam.find(params[:id])
  end

  # POST /real_teams
  # POST /real_teams.xml
  def create
    @real_team = RealTeam.new(params[:real_team])

    respond_to do |format|
      if @real_team.save
        flash[:notice] = 'RealTeam was successfully created.'
        format.html { redirect_to(@real_team) }
        format.xml  { render :xml => @real_team, :status => :created, :location => @real_team }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @real_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /real_teams/1
  # PUT /real_teams/1.xml
  def update
    @real_team = RealTeam.find(params[:id])

    respond_to do |format|
      if @real_team.update_attributes(params[:real_team])
        flash[:notice] = 'RealTeam was successfully updated.'
        format.html { redirect_to(@real_team) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @real_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /real_teams/1
  # DELETE /real_teams/1.xml
  def destroy
    @real_team = RealTeam.find(params[:id])
    @real_team.destroy

    respond_to do |format|
      format.html { redirect_to(real_teams_url) }
      format.xml  { head :ok }
    end
  end
end

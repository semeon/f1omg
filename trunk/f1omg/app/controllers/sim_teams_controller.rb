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
    @sim_team = SimTeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sim_team }
    end
  end

  # GET /sim_teams/new
  # GET /sim_teams/new.xml
  def new
    @sim_team = SimTeam.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sim_team }
    end
  end

  # GET /sim_teams/1/edit
  def edit
    @sim_team = SimTeam.find(params[:id])
  end

  # POST /sim_teams
  # POST /sim_teams.xml
  def create
    @sim_team = SimTeam.new(params[:sim_team])

    respond_to do |format|
      if @sim_team.save
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

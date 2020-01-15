class TournamentController < ApplicationController
  def index
    @tournament = Tournament.all
    render :index
    # Code for listing all tournament goes here.
  end

  def new
    @team_a = Team.find(params[:team_a_id])
    @team_b = Team.find(params[:team_b_id])
    @tournament = @team.tournaments.new
    render :new
  end

  def show
    @team_a = Team.find(params[:team_a_id])
    @team_b = Team.find(params[:team_b_id])
    @tournament = Tournament.find(params[:id])
    render :show
  end

  def edit
    @team_a = Team.find(params[:team_a_id])
    @team_b = Team.find(params[:team_b_id])
    @tournament = Tournament.find(params[:id])
    render :edit
  end

  def create
    @team_a = Team.find(params[:team_a_id])
    @team_b = Team.find(params[:team_b_id])
    @tournament = @team.tournament.new(tournament_params)
    if @tournament.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update(tournament_params)
      redirect_to team_path(@tournament.team)
    else
      render :edit
    end
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to team_path(@tournament.team)
  end

  # Other controller actions go here.

  private
  def tournament_params
    params.require(:tournament).permit(:name, :coordinator)
  end
end

class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
  end

  def show
    @politician = Politician.find(params[:id])
  end

  def create
    firstname = params[:first_name]
    lastname = params[:last_name]
    birthdate = params[:birthdate]
    totalyears = params[:total_years_service] 
    party = params[:party]
    currentoffice = params[:current_office]

    @politician = Politician.new(first_name: firstname, last_name: lastname, birthdate: birthdate, total_years_service: totalyears, party: party, current_office: currentoffice )
    @politician.save

    render :show
  end

  def update
    @politician = Politician.find(params[:id])
    firstname = params[:first_name] || @politician.first_name
    lastname = params[:last_name] || @politician.last_name
    birthdate = params[:birthdate] || @politician.birthdate
    totalyears = params[:total_years_service] || @politician.total_years_service
    party = params[:party] || @politician.party
    currentoffice = params[:current_office] || @politician.current_office

    @politician.update(first_name: firstname, last_name: lastname, birthdate: birthdate, total_years_service: totalyears, party: party, current_office: currentoffice )

    render :show

  end

  def destroy
    @politician = Politician.find(params[:id])
    @politician.delete

    render json: @politician
  end
end

class Admins::SearchesController < Admins::BaseController
  def show
    if params[:search]
      station = "#{params[:search][:arrival_station]} - #{params[:search][:departure_station]}"
      route = Route.where(name: station).first
      @trains = Train.where(route: route)
    end
  end
end

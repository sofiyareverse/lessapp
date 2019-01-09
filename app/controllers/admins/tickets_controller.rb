class Admins::TicketsController < Admins::BaseController
  before_action :authenticate_admin!
  before_action :set_train, only: [:new, :create]
  before_action :set_ticket, only: [:show, :destroy, :edit, :update]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @train.tickets.new(ticket_params)
    @ticket.passenger = current_admin
    @ticket.start_station = @train.route.railway_stations.first
    @ticket.finish_station = @train.route.railway_stations.last
    if @ticket.save
    redirect_to @ticket
    else
    render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @ticket.update(ticket_params)
    redirect_to admin_tickets_path
  end

  def destroy
    @ticket.destroy
    redirect_to 'index'
  end

  private

  def set_train
    @train = Train.find(params[:id])
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :initials, :passport_data)
  end
end

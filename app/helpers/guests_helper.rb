module GuestsHelper

  def index
    @guest = Guest.new
    @guests = Guest.all
  end

end

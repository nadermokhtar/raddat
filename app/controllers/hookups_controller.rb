class HookupsController < ApplicationController

  def index
  end

  def new
    @hookup = Hookup.new
  end

  def create
    @hookup = Hookup.create(hookup_params)


    redirect_to @hookup

  end

  def show
    @hookup = Hookup.find(params[:id])

  end

  private

 def hookup_params
  params.require(:hookup).permit(:title, :url)
end

end

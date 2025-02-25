class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to notes_path
  end
end

class PicklsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @pickls = Pickl.all
  end


  def create

  end


end

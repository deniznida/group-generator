class CodeController < ApplicationController
   
  def index
    @groups = Group.where(code: params[:id])
  end

end
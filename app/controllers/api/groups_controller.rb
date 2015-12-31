class Api::GroupsController < ApplicationController
  skip_before_filter :require_login 
  respond_to :html, :json

  def index
    @groups = Group.select(:code, :group_type_id).joins(:students).where("cohort_id = '#{params[:cohort]}'").distinct

    respond_with(@groups)
  end


  def show
     @groups = Group.joins(:students).select('groups.id as sgid, group_type_id, code, students.name as student_name').where(code: params[:id])

    respond_with(@groups)
  end
end
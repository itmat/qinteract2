class IlimsController < ApplicationController
  ###  now uses new lims objects ###
  def list
    @projects = User.find(params[:id]).projects
    render(:layout => false)
  end
  
  def files
    #display file from sample id
    @items = Project.find(params[:id]).items.find(:all, :conditions => ["lower(attachment_file_name) like ? OR lower(attachment_file_name) like ?", "%.raw", "%.mzxml"] )
    render(:layout => false)
  end
end

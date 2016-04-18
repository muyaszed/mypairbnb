class SearchesController < ApplicationController
 

  def index

  	@result = PgSearch.multisearch(params[:query][:text])
  	@start = params[:query][:start_date].to_date
  	@end = params[:query][:end_date].to_date
  	
  	
  	
  end



end

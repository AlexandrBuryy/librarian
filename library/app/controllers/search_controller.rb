require 'openlibrary'
class SearchController < ApplicationController
 def create
      client = Openlibrary::Client.new
      @books = client.search({title: params[:q][:author]})
     # 30.times {puts params}
      puts  params
            respond_to do |format|
        format.js { render 'create'}
        #format.html
        end
  end
end
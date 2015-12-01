require 'openlibrary'
class SearchController < ApplicationController
 def create
      client = Openlibrary::Client.new
      @books = client.search({title: params[:q][:author]})
     # 30.times {puts params}
      puts  params
      @boooo = client.search({author: params[:q][:title]})
            respond_to do |format|
        puts params
             format.js { render 'create'}
        #format.html
        end
  end
end
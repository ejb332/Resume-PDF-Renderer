class ResumesController < ApplicationController
  HEADERS = { 'Authorization' => "Token token=#{ENV['API_KEY']}", 'X-User-Email' => ENV['API_EMAIL'] }

  # def index
  #   puts 'hello world'
  #   render 'index.html.erb'
  # end

  def show
    # @student = Unirest.get(
    #   "#{ENV['API_BASE_URL']}/student/#{params[:id]}",
    #   headers: HEADERS,
    # ).body

    render 'show.html.erb'
  end

end

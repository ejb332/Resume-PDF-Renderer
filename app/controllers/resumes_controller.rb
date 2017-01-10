class ResumesController < ApplicationController
  def index
    puts 'hello world'
    render 'index.html.erb'
  end

  def show
    puts 'hello world'
    render 'show.html.erb'
  end
end

class ResumesController < ApplicationController
  # HEADERS = { 'Authorization' => "Token token=#{ENV['API_KEY']}", 'X-User-Email' => ENV['API_EMAIL'] }

  def index
    @resumes = Resume.all
    render 'index.html.erb'
  end

  # def show
  #   @resume = Unirest.get(
  #     "#{ENV['API_BASE_URL']}/resume/#{params[:id]}",
  #     headers: HEADERS,
  #   ).body
  #   @resume =
  #     respond_to do |format|
  #       format.html
  #       format.pdf do
  #         pdf = ResumePdf.new(@resume, view_context)
  #         send_data pdf.render, filename: 
  #         "resume.pdf",
  #         type: "application/pdf", 
  #         disposition: "inline"
  #       end
  #     end
  # end

  def show
    @resume = Resume.find(params[:id])
    respond_to do |format|
      pdf = Prawn::Document.new
      pdf.text 'Hello World'

      send_data pdf.render
    end
  end
end
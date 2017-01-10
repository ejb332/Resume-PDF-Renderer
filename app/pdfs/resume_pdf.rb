class ResumePdf < Prawn::Document

  def initialize(resume, view)
    super()
    @resume = resume
    @view = view
    show_something
    text "This is a resume for student#{@resume.id}"
  end

  def show_something
    move_down 80
    text "Hello #{@resume.first_name.capitalize},"
    move_down 15
    text "Stuff",
    :indent_paragraphs => 40, :size => 13
  end  

end
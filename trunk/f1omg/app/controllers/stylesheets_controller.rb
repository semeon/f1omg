class StylesheetsController < ApplicationController
  
  def application
    @main_font = "Tahoma"
    @body_background = "#ffffff"
    @content_background = "#ffffff"
    @border_color = "#333366"
    @panel_backround = "#99CCFF"
    @content_width = "600px"
    respond_to do |format|
      format.css do
        render
      end # format.css
    end
  end
end

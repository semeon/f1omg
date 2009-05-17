class StylesheetsController < ApplicationController


  def application
    @main_color = "#333366"
    @main_font = "Tahoma"
    @body_background = "#ffffff"
    @content_background = "#ffffff"
    @panel_backround = "#99CCFF"
    @content_width = "600px"
    respond_to do |format|
      format.css do
        render
      end # format.css
    end
  end
  
  def contentstyles
    @highlight_color = "yellow"
    @main_color = "#333366"
    @main_font = "Tahoma"
    respond_to do |format|
      format.css do
        render
      end # format.css
    end
  end
  
  
end

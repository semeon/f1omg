class StylesheetsController < ApplicationController
  
  def application
    @main_font = "Tahoma"
    @body_background = "#cccccc"
    @content_background = "#ffffff"
    respond_to do |format|
      format.css do
        render
      end # format.css
    end
  end
end

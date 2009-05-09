class StylesheetsController < ApplicationController
  
  def application
    @main_font = "Tahoma"
    respond_to do |format|
      format.css do
        render
      end # format.css
    end
  end
end

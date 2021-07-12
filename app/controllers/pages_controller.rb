class PagesController < ApplicationController
  def home
  end

  def pdf_generator
    @restaurants = Restaurant.all

    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: "file_name",
                layout: 'pdf.html.erb'
                # Excluding ".pdf" extension.
      end
    end
  end
end

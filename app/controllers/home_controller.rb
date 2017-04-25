class HomeController < ApplicationController
  
  def index
    
  end
  
  def to_pdf_table
    respond_to do |format|
      format.pdf do
         render :pdf => "test_report_with_table.pdf",
         :template => "home/html_with_table.html.erb",
         :layout => 'pdf.html.erb',
         :save_to_file =>  Rails.root.join('pdfs', "test_report_with_table.pdf")
        
        ###########Another way, ###################################
          #pdf = WickedPdf.new.pdf_from_string(
          #render_to_string("home/html_with_table.html.erb", layout: false))
          #send_data pdf, :filename => "resume.pdf", :type => "application/pdf", :disposition => "attachment"
       end
     end
  end
end

# WickedPdf.config = {
  # #:wkhtmltopdf => '/usr/local/bin/wkhtmltopdf',
  # #:wkhtmltopdf => Rails.root.join('bin', 'wkhtmltopdf_linux_amd64').to_s
  # #:layout => "pdf.html",
  # #:exe_path => '/usr/local/bin/wkhtmltopdf'
  # # binary files 'wkhtmltopdf_linux_amd64' and 'wkhtmltopdf_linux_x86' are not working
  # :exe_path => Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s  ### wkhtmltopdf 0.9.9 static binary files
# }

platform = RUBY_PLATFORM 
### wkhtmltopdf 0.9.9 static binary files
if platform.include?("darwin") # OS X machine 
  binary_path = Rails.root.join('bin', 'wkhtmltopdf-i386').to_s 
elsif platform.include?("64-linux") # 64-bit linux machine 
  binary_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s 
end 

WickedPdf.config = { 
  :exe_path => binary_path,
  :orientation => 'Landscape',
  :page_size => 'A4',
  :disable_external_links => true,
  :disable_internal_links => true,
  :print_media_type => true
  
  }


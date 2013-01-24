class DownloadController < ApplicationController
  def technik
    @techniken = Technik.all
    respond_to do |format|
      format.xml
    end
  end
end

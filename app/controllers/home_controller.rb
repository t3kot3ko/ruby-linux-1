class DirectoryService

        def Search

		directories = ""
		tmp = Dir.glob('/home/edisga/**/*')

		tmp.each do |file_name|
			#p file_name
			directories = directories + "-" + file_name 
		end
	
		return tmp
        end
end

class HomeController < ApplicationController

  $directoriesArray ||= Array.new

  def index
    service = DirectoryService.new
    $directoriesArray.push(service.Search)
    @output = "Response back from method"
  end
end

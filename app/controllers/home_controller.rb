class DirectoryService

        def Search
		directories = Array[]
		tmp = Dir.glob('/**/*')

                directoryStr = ""
                     
                i = 0
                len = 100

		tmp.each do |file_name|
			directories[i] = file_name + SecureRandom.alphanumeric(len) + "-"
		end

		return directories
        end
end

class HomeController < ApplicationController

  $directoriesArray ||= Array.new

  def index
    service = DirectoryService.new
    directories = service.Search

    $directoriesArray.push(directories)

    p "#{$directoriesArray.count}"
    @output = "Home Page loaded"
  end
end

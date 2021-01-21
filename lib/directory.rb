module Directory
    def Search
        Dir.foreach('C:\temp') do |filename|
            next if filename == '.' or filename == '..'
            Rails.logger.info filename
            # Do work on the remaining files & directories
        end
    end
end
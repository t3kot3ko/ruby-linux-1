class HomeController < ApplicationController
  include Directory

  def index
    Directory.Search
    @output = "Response back from method in #{elapsed_seconds}"
  end
end
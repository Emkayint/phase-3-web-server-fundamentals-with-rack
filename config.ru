require "rack"
require "pry"

class App
  def call(env)
    # binding.pry
    path = env["PATH_INFO"]
    if path == "/"
      [200, {"Content-Type" => "text/html"}, ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == "/potato"
      [200, {"Content-Type" => "text/html"}, ["<p> Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, {"Content-TYpe" => "text/html"}, ["Page not Found"]]
    end
  end
end

run App.new
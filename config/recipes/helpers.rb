def template(from, to)
  erb = File.read("./config/recipes/templates/#{from}")
  put ERB.new(erb).result(binding), to
end


def set_default(name, *args, &block)
  set(name, *args, &block) unless exists?(name)
end
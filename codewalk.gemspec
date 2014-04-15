Gem::Specification.new do |s|
  s.name        = "codewalk"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Max Cantor"]
  s.email       = ["max@maxcantor.net"]
  s.summary     = "A quick script for making code-alongs clearer."
  s.description = "A quick script for making code-alongs clearer."

  s.files        = Dir.glob("{bin,lib}/**/*")
  s.executables  = ['codewalk']
  s.require_path = 'lib'
end


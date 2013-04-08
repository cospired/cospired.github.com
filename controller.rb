PRODCUTION = false
VERSION = 1
ROOT = Dir.pwd

require 'stasis-compass'
require 'animate-sass'

c = Compass.configuration
c.http_path = "/"
c.css_dir = "public/stylesheets"
c.sass_dir = "../"
c.images_dir = "../images"

# ignore everything needed to build
ignore 'Gemfile.lock'
ignore 'Gemfile'
ignore 'Rakefile'
# ignore all the git stuff
ignore '.gitignore'
ignore '.ruby-version'
ignore '.git'
# we don't want to render the readme
ignore 'README.md'

# ignore all the partials
ignore /.*partials/
ignore /.*facebook.png/
ignore /.*twitter.png/

layout "layout.html.erb"

before /.*html\.erb/ do
  # set evironment for file
  PRODCUTION ? @production = false : @production = true
  @version = VERSION

  # variables
  @title = "Cospired"
end

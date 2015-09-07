require "sass/globbing"
require "compass"

paths = Compass.sass_engine_options[:load_paths].select { |v| v.is_a?(Sass::Importers::Filesystem) }
ENV["SASS_PATH"] = "#{ENV["SASS_PATHS"]}#{File::PATH_SEPARATOR}#{paths.map{ |v| v.root }.join(
  File::PATH_SEPARATOR
)}"

require 'rack'

module Shotgun
  autoload :Loader,      'shotgun/loader'
  autoload :SkipFavicon, 'shotgun/favicon'
  autoload :Static,      'shotgun/static'

  def self.new(rackup_file, &block)
    Loader.new(rackup_file, &block)
  end

  def self.enable_copy_on_write
    GC.copy_on_write_friendly = true if GC.respond_to?(:copy_on_write_friendly=)
  end
end

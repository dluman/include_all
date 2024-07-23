# Implmentation of approach described by this SO article:
# https://stackoverflow.com/questions/3084325/getting-contents-classes-modules-of-required-files-in-ruby

# Module declaration
module IncludeAll
  # Include all (in the future, a subset) of functionality or
  # classes in a newly-required module
  #
  # Example
  # require_all 'module'
  # include_all

  def include_all(*args)
    added = list_objects()
    (added - $startup).each { |m| include m }
  end

  # Lists objects in the ObjectSpace on demand
  def list_objects
    ObjectSpace.each_object(Module).to_a
  end

end

include IncludeAll

# Create initial conditions at import
$startup = IncludeAll.list_objects()

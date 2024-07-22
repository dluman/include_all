# Implmentation of approach described by this SO article:
# https://stackoverflow.com/questions/3084325/getting-contents-classes-modules-of-required-files-in-ruby

module IncludeAll

  def include_all(*args)
    added = list_objects()
    (added - $startup).each { |m| include m }
  end

  def list_objects
    ObjectSpace.each_object(Module).to_a
  end

end

include IncludeAll
$startup = IncludeAll.list_objects()

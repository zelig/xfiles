require 'erector'
class Erector::Widget
  #self.controller_assigns_propagate_to_partials = false
  #self.ignore_extra_controller_assigns = true

  def call_block(*args)
    args << self if args.empty?
    @_block.call(*args) if @_block
  end
end
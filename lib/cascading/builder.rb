# builder.rb
#
# Copyright 2009, Grégoire Marabout. All Rights Reserved.
#
# This is free software. Please see the LICENSE and COPYING files for details.


require "cascading/assembly"
require "cascading/flow"
require "cascading/cascade"

module Cascading

  class BuilderFactory 
    def assembly(node, args, &block)
      Cascading::Assembly.new(name) 
    end

    def flow(node, args, &block)
      Cascading::Flow.new(name) 
    end

    def cascade(node, args, &block)
      Cascading::Cascade.new(name) 
    end
  end


  # Builder class. It provides class methods to create assemblies, flows and cascades.
  class Builder < Cascading::Node
 
  end

end
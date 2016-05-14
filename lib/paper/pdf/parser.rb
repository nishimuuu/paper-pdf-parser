require 'pathname'
lib = Pathname.new(__FILE__).dirname.join().expand_path.to_s
$:.unshift lib

require 'paper/pdf/parser/paper-pdf-parser'
require "paper/pdf/parser/version"

module Paper
  module Pdf
    module Parser
      # Your code goes here...
    end
  end
end

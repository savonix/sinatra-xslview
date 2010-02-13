###
# Copyright: 2010 Savonix Corporation
# Author:    Albert Lash
# License:   MIT
##
require 'sinatra/base'

module Sinatra
  ###
  # Renders output based upon XML and XSL
  # In practice, I use Builder to create the XML to be transformed
  # As such, I do not plan on adding support for parameters, like Rack-XSLView
  # TODO: cache stylesheets
  ##
  module XSLView
    def xslview(myxml,myxsl)
      xslt = XML::XSLT.new()
      xslt.xml = myxml
      xslt.xsl = options.xslviews + myxsl
      xslt.serve
    end
  end

  helpers XSLView
end

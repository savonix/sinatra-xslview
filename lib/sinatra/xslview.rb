require 'sinatra/base'

module Sinatra
  module XSLView
  def xslview(myxml,myxsl)
      xslt = ::XML::XSLT.new()
      xslt.xml = myxml
      xslt.xsl = myxsl
      xslt.serve
    end
  end

  helpers XSLView
end

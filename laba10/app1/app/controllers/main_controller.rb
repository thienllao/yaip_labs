require 'open-uri'
require 'nokogiri'
class MainController < ApplicationController

  def index; end

  def xslt_transform(data)
    doc = Nokogiri::XML(data) # Парсим входные данные 
    p doc
    xslt = Nokogiri::XSLT(open("http://localhost:3000/test.xslt")) # формируем шаблон
    p xslt.transform(doc)
    
  end

  def client_xslt(data)
    doc = Nokogiri::XML(data) # парсим входные данные 
    xslt = Nokogiri::XML::ProcessingInstruction.new(doc, 'xml-stylesheet', 'xmlns="http://www.w3.org/1999/xhtml" type="text/xsl" href="http://localhost:3000/test.xslt"') # Достаём шаблон из второго приложения
    doc.root.add_previous_sibling(xslt)
    doc
  end

  def view
    response = open("http://localhost:3001/main/calc?n=#{params[:n]}").read
    if (params[:v2] == '1') then
      @result = xslt_transform(response)
    elsif (params[:v2] == '2') then
      @result = render xml: client_xslt(response)
  #  else
   #   @result = "<b>Ошибка</b>"
    end
  end

end

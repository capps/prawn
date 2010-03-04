# encoding: utf-8
#
# The very first Prawn example.  Here for nostalgia's sake.
#
require "#{File.dirname(__FILE__)}/../example_helper.rb"
 
pdf = Prawn::Document.new   
pdf.line_width = 10    


def render_hello(pdf)
  [[100,741,100,641], 
   [100,691,150,691],
   [150,741,150,641],
   [200,741,200,641],   
   [100,600,100,500],
   [100,600,150,550],
   [100,550,150,550],
   [175,600,175,500], 
   [175,600,225,550], 
   [175,550,225,550],
   [175,550,225,500],
   [275,600,250,500],
   [275,600,300,500],   
   [250,550,300,550],
   [315,600,350,500],
   [350,500,365,550], 
   [365,550,380,500],
   [380,500,415,600], 
   [430,600,430,500],
   [430,600,465,500],
   [465,600,465,500]].each { |points| pdf.stroke_line(*points) }
end

render_hello(pdf)
pdf.state.space.shift(:bottom => -300, :left => 75)
render_hello(pdf)

pdf.render_file "lines.pdf"

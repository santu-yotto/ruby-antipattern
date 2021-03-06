require_relative 'html_formatter'
require_relative 'plain_text_formatter'

class Report

  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly Report'
    @text = [ 'Things are going', 'really, really well.' ]
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report( self )
  end
end

report = Report.new(HTMLFormatter.new)
report.output_report

report = Report.new(PlainTextFormatter.new)
report.output_report


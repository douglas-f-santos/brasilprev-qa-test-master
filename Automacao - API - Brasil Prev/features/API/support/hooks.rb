 require 'report_builder'
    at_exit do
        ReportBuilder.input_path = "cucumber.json"
             ReportBuilder.configure do |config|
             config.report_path = "results\\reports"
             config.report_types = [:json, :html]
        end
        options = {
         report_title: "Automacao de API - Brasil Prev"
       }
      ReportBuilder.build_report options
      end

    After do |scenario|
      if scenario.failed?
         log "Status Code: #{$response.code}"
         log "Body: #{$response.body}"
      end 
 end 



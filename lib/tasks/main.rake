namespace :judicial do

    desc 'Get info from /poderjudicial'
  
    task :scraper, [:url] => [:environment] do |_task, args|
      return abort('Argument URL is required, must be a String valid URL') unless args.key?(:url)
        print "Starting... \n"
        
        url = args[:url]
        scraper = Scraper.new(url)
        scraper.scraper

        Rails.logger.info("Info: URL successful...")

        rescue => e
            print "Problem detected...\n"
            print e
    end
end
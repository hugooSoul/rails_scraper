require 'HTTParty'
require 'Nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    def initialize(url)
        @url = url
    end

    def parse_url(url)
        unparsed_page = open(url)
        Nokogiri::HTML(unparsed_page)
    end

    def scraper
        begin
            parsed_page = parse_url(@url)

            # header = parsed_page.css('div.header').children[1].text
            # header_split = header.split('|')
            # header_split_exp = header_split.last.split('Exp:')

            court = parsed_page.css('div.content').children[4].children[0].text.split('>').last.strip
            author = parsed_page.css('div.content').children[4].children[2].text.split('Actor:').last.strip
            defendant = parsed_page.css('div.content').children[4].children[4].text.split('Demandado:').last.strip

            summary = parsed_page.css('div.content').children[7].text
            notification = parsed_page.css('div.postDegradado').css('li.list-group-item').map{ |nots| p nots.children[3].text }.compact

            document_info = [
                court: court,
                author: author,
                defendant: defendant,
                summary: summary,
                notification: notification
            ]

=begin
            ## Array to test Create Document without the call
            document_info = [
                court: 'court',
                author: 'author',
                defendant: 'defendant',
                summary: 'summary',
                notification: 'notification'
            ]
=end

            Document.create_from_collection(document_info)

            print document_info
            print '\nSave and Sound...'

            return document_info

        rescue => e
            print "There was an error \n"
            print e
            Rails.logger.error("Error: Saving in DB. Error: #{e}")
        end
    end
end

require "open-uri"
class AmazonProduct

  attr_reader :title, :author, :prices, :isbn_numbers

  def initialize amazon_url
    parse_results amazon_url if amazon_url
  end

  def parse_results url

    response = Nokogiri::HTML(open(url))
    @title  = response.css("span#productTitle").text
    @author = response.css("span.author a").text
    @prices = {}
    prices_text = response.xpath("(//div[@id='tmmSwatches'])//li").text
    %w{Kindle Paperback Hardcover}.each do |format|
      match = prices_text.match(/(#{format})[^\w]+(\$[\d.]+)/)
      @prices[format.downcase.to_sym] = match[2] if match
    end
    @isbn_numbers = response.
                    css("table#productDetailsTable div.content").
                    text.scan /[\d-]{10,}/
  end
end

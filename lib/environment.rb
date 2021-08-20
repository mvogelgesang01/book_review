# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'pry'


require_relative "../lib/book_review/version.rb"
require_relative "../lib/book_review/cli.rb"
require_relative "../lib/book_review/scraper.rb"
require_relative "../lib/book_review/book.rb"


module BookReview
  class Error < StandardError; end
  # Your code goes here...
end

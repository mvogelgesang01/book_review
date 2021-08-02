# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'pry'


require_relative "../lib/state_review/version.rb"
require_relative "../lib/state_review/cli.rb"
require_relative "../lib/state_review/scraper.rb"
require_relative "../lib/state_review/state.rb"
require_relative "../lib/state_review/review.rb"

module StateReview
  class Error < StandardError; end
  # Your code goes here...
end

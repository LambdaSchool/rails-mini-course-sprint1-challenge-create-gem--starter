require "publishable/version"

module Publishable
  class Error < StandardError; end
  def publish
    update(published_At: Time.now)
  end
  
  def unpublish
    update(published_At: nil)
  end
  
  def published?
    not published_at.nil?
  end
end
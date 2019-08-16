require "publishable/version"

module Publishable
  class Error < StandardError; end
  def publish
    update.call(published_At) #figure this out eventually
  end
  
  def unpublish
    this.published_At = nil
  end
  
  def published?
    published_at.nil? ? false : true
  end

end

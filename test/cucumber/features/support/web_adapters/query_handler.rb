class WhatDoIHaveWeb
  def initialize(session, content_handler)
    @session = session
    @content_handler = content_handler
  end

  def handle(query)
    if have_home()
      @content_handler.handle(Content::Home.new)
    end
  end

  def have_home
    identifying_content = 'welcome!'
    @session.has_content?(identifying_content)
  end
end

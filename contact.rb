# Title: Contact Plugin for Jekyll
# Author: Wern Ancheta http://anchetawern.github.com
# Description: Generates contact forms that uses pooleapp.com
#

module Jekyll
  class Contact < Liquid::Tag

    def initialize(name, options, tokens)
      super
      args = options.split(' ')
      @id = args[0]
      @redirect = args[1]
    end

    def render(context)
      %(<div class="contact-form-container">
          <div class="alert" id="alert-box">
            Your message was sent! I'll get back to you soon. Thanks!
          </div>
          <form action="http://pooleapp.com/stash/#{@id}/" method="POST">
            <input type="hidden" name="redirect_to" value="#{@redirect}">
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" name="name" id="name" class="form-control">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" name="email" id="email" class="form-control">
            </div>
            <div class="form-group">
              <label for="msg">Message</label>
              <textarea name="msg" id="msg" cols="30" rows="10" class="form-control"></textarea>
            </div>
            <button type="submit" id="btn-sendmessage">Send Message</button>
          </form>
        </div>)
    end
  end
end

Liquid::Template.register_tag('contact', Jekyll::Contact)


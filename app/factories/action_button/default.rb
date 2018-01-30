module ActionButton
  class Default
    include Rails.application.routes.url_helpers

    attr_accessor :type, :options

    def initialize(options)
      @type    = :default
      @options = options
    end
  
    def render
      ApplicationController.render( 
        partial: "action_buttons/#{type}", 
        assigns: { options: options, button: self } 
      )
    end

    def path
      action_buttons_default_path
    end

    def text
      I18n.t("action_buttons.#{type}.text.initial")
    end

    def disabled_text
      I18n.t("action_buttons.#{type}.text.disabled")
    end

    def show_test_variation_icon?
      if options[:test_variation] == "v2"
        true
      else
        false
      end
    end
  end
end
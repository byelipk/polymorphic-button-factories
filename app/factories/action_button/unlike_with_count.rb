module ActionButton
  class UnlikeWithCount < Default

    attr_accessor :count

    def initialize(options)
      super(options)

      @type = :unlike_with_count
      @count = options.fetch(:count) { 0 }
    end

    def path
      action_buttons_unlike_with_count_path(count: count)
    end
  end
end
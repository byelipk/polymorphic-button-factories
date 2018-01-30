module ActionButtonsHelper
  def default_button
    ActionButton::Factory.for(:default, params).render
  end

  def success_button
    ActionButton::Factory.for(:success, params).render
  end

  def recommend_button
    ActionButton::Factory.for(:recommend, params).render
  end

  def recommended_button
    ActionButton::Factory.for(:recommended, params).render
  end

  def like_with_count_button
    ActionButton::Factory.for(
      :like_with_count, 
      params.merge({ count: @count })
    ).render
  end
end

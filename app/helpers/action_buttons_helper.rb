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
end

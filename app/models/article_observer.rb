class ArticleObserver < ActiveRecord::Observer
  # Generic transition callback *after* the transition is performed
  def after_transition(article, transition)
    Rails.logger.info "Update tweaked_at !"
    article.update_attribute(:tweaked_at, Time.now)
  end
end

class ArticleObserver < ActiveRecord::Observer

  def before_transition(article, transition)
    article.update_attribute(:previous_state, article.state)
  end

  def after_transition(article, transition)
    article.histories.create(owner: article.owner, previous_state: article.previous_state, state: article.state)
  end
end

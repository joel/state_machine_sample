class Article < ActiveRecord::Base
  attr_accessible :published_at, :state, :title
  
  state_machine :initial => :draft do
    after_transition draft: :published, do: :set_published_at!
    after_transition published: :draft, do: :remove_published_at!
            
    event :publish do
      transition :draft => :published
    end
    
    event :unpublish do
      transition :published => :draft
    end
  end
  
  private 
  
  def set_published_at!
    self.update_attribute(:published_at, Time.now)
  end
    
  def remove_published_at!
    self.update_attribute(:published_at, nil)
  end

end

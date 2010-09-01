class Blog < ActiveRecord::Base

  attr_accessible :title, :body

  named_scope :compelx_named_scope, :conditions => {}
  named_scope :compelx_named_scope_with_param, lambda {|args| {:conditions => {}}}

  def self.some_complex
    searchlogic({:compelx_named_scope => true,
                 :compelx_named_scope_with_param => 'args'}).body_like_any('')
  end

end

class MyGem
  def self.wazzup(language = :ruby)
    g = Coder.new language
    g.wazzup
  end
end
require 'my_gem/coder'

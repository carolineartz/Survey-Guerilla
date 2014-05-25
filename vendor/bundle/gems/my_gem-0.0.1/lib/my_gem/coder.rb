class MyGem::Coder
  def initialize(language)
    @language = language
  end 
  def wazzup
    case @language
    when :java
      "hello Java guys!"
    else
      "hello Ruby guys!"
    end
  end 
end

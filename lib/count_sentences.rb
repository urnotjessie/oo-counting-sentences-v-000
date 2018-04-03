require 'pry'

class String

  def sentence?
      self.end_with?(".")
  end

  def question?
      self.end_with?("?")
  end

  def exclamation?
      self.end_with?("!")
  end

  def count_sentences
      sentences = self.split(".").
        flat_map{ |sentences| sentences.split("!")}.
        flat_map{ |question| question.split("?")}
      sentences.count
  end
end

test = "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

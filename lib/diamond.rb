class Diamond
  class << self
    def print(letter)
      res = []
      with_alphabet_for(letter) do |l|
        res << row(l, letter)
      end
      (res + res[0..-2].reverse).join('')
    end
    
    private
    
    def row(l, letter)
      indent(l, letter) + \
      l + spacing(l) + \
      (l == 'A' ? '' : l) + "\n"
    end
    
    def indent(l, letter)
      ' ' * (letter.ord - l.ord)
    end
    
    def spacing(l)
      return '' if l == 'A'
      ' ' * (2 * (l.ord - 'A'.ord) - 1)
    end
  
    def with_alphabet_for(letter)
      res = []
      letters = Array('A'..letter)
      letters.each do |l|
        yield l
      end
    end
  end
end
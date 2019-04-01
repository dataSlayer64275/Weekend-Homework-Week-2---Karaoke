class Guest

attr_reader :name
attr_accessor :wallet

  def initialize(name)
    @name = name
    @wallet = 100
  end


end

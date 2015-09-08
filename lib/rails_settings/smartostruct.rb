require 'ostruct'

class Smartostruct < OpenStruct

  attr_accessor :parent_key

  def initialize(hash=nil, parent_key=nil)
	@parent_key = parent_key
    @table = {}
    @hash_table = {}

    if hash
      hash.each do |k,v|
        @table[k.to_sym] = (v.is_a?(Hash) ? self.class.new(v, k.to_sym) : v)
        @hash_table[k.to_sym] = v

        new_ostruct_member(k)
      end
    end
  end

  def to_h
    @hash_table
  end

  def first
    key = to_h.first[0]
    [key, @table[key]]
  end

end

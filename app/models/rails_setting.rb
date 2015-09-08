class RailsSetting < ActiveRecord::Base
  class JSONSmartostruct
    def self.load(str)
      obj = Smartostruct.new(JSON.load(str))
      obj.freeze
      obj
    end
    def self.dump(obj)
      JSON.dump(obj)
    end
  end

  serialize :data, JSONSmartostruct
  
  def self.[] (name)
    return RailsSetting.where(name: name.to_s).first
  end
  
end

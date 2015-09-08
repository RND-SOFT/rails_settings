class RailsSetting < ActiveRecord::Base
  serialize :data, OpenStruct
  
  def self.[] (name)
    return RailsSetting.where(name: name.to_s).first
  end
  
end

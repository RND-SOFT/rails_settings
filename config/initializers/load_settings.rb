RAILSSETTINGS = HashWithIndifferentAccess.new(YAML.load_file("#{Rails.root}/config/railssettings.yml")[Rails.env]) rescue {}

RAILSSETTINGS[:settings].each_pair do |k, v|
  begin
    unless RailsSetting[k]
      RailsSetting.create(name: k, data: OpenStruct.new(v))
    end rescue nil

    s = RailsSetting[k]
    s.data = OpenStruct.new(v.merge(s.data.to_h))
    s.save
  rescue
    nil
  end
end if RAILSSETTINGS[:settings]


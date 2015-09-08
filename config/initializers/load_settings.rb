RAILSSETTINGS = Smartostruct.new(YAML.load_file("#{Rails.root}/config/rails_settings.yml")) rescue {}

RAILSSETTINGS[:settings].each_pair do |k, v|
  begin
    unless RailsSetting[k]
      RailsSetting.create(name: k, data: v.to_h)
    end rescue nil

    s = RailsSetting[k]
    s.data = Smartostruct.new(v.merge(s.data.to_h))
    s.save
  rescue
    nil
  end
end if RAILSSETTINGS[:settings]


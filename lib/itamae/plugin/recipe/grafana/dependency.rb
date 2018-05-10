%w(
  wget
  fontconfig
  freetype*
  urw-fonts
).each do |pkg|
  package pkg do
    action :install
  end
end

case node[:platform]
when "redhat", "fedra", "amazon"
  # TODO: add if need
else
  raise "Sorry, unsupported platfrom."
end

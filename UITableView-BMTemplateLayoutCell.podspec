Pod::Spec.new do |s|
s.name         = 'UITableView-BMTemplateLayoutCell'
s.version      = '2.0.1'
s.summary      = 'Template autolayout cell for automatically UITableViewCell UITableViewHeaderFooterView height calculating'
s.homepage     = 'https://github.com/asiosldh/UITableView-BMTemplateLayoutCell'
s.license      = 'MIT'
s.authors      = {'liangdahong' => 'ios@liangdahong.com'}
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/liangdahong/UITableView-BMTemplateLayoutCell.git', :tag => s.version}
s.source_files = 'Sources/BMTemplateLayoutCell/**/*.{h,m}'
s.requires_arc = true
end

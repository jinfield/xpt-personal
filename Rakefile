HOME = ENV['HOME']
PATH = ".vim/bundle/xptemplate/personal"
DEST = "#{HOME}/#{PATH}"
SRC = "ftplugin"

directory DEST

task :default => :install

desc "Hardlink snippets into the ~/#{PATH} directory"
task :install => DEST do
  run "cp -avl #{SRC} #{DEST}/"
end

desc "Remove obsolete from and copy new snippets to ~/#{PATH}"
task :sync => :install do
  run "rsync -ri --delete #{SRC} #{DEST}/"
end

def run(cmd)
  puts cmd
  system cmd
end

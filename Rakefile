HOME = ENV['HOME']
DEST = "#{HOME}/.vim/personal"
SRC = "ftplugin"

directory DEST

task :default => :install

desc "Hardlink snippets into the ~/.vim/personal directory"
task :install => DEST do
  run "cp -avl #{SRC} #{DEST}/"
end

desc "Remove obsolete from and copy new snippets to ~/.vim/personal"
task :sync => :install do
  run "rsync -ri --delete #{SRC} #{DEST}/"
end

def run(cmd)
  puts cmd
  system cmd
end

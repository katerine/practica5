
rake tijeras

task :default => :test
 desc "Run bin/ppt_main.rb tijeras"

task :tijeras do
 sh "ruby I lib bin/ppt_main.rb tijeras"
end

rake -T

desc "Run test"
task :test do
sh "ruby -I ~/LPP/Prac5_P_U/bin/ppt_main.rb"
end

desc " Run especificar test"
task :t, :test_name do |t,args|
  test_name = args[:test_name] || 'test_play'
  sh "ruby -w -I ~/LPP/Prac5_P_U/test/tc_ppt.rb --name #{test_name}"
end


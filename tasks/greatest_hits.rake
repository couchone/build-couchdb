# Recommended commands

namespace :greatest do
  task :hits do
    hits = [ { "desc" => "Build only Erlang, not the other bullshit",
               "task" => "erlang",
               "install=/some/place" => "Install it all here (default is ./build)",
               "note" => "An 'env.sh' file will be there. Source it to activate the install."
             },
             { "desc" => "Build a full CouchDB system",
               "task" => nil,
               "install=/some/place" => "Install it all here (default is ./build)",
               "note" => "Development files installed too"
             }
           ]

    hits.each do |hit|
      puts hit.delete("desc")
      puts "======="
      line = []
      line << hit.task ? "rake" : "rake #{hit.delete "task"}"
      note = hit.delete "note"
      hits.each do |arg, desc|
        
      end
      puts "> #{rake} "
    end
  puts 
end

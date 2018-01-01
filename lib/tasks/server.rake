# Make a file under: `project_root/lib/tasks/server.rake`

# Then paste the following code

namespace :server do
  desc "Stop the running server by killing the PID"
  task :kill do
    STDOUT.puts "Enter port number: "
    post_number = STDIN.gets.strip
    system "pid=$(lsof -i:#{post_number.to_i} -t); kill -TERM $pid || kill -KILL $pid"
  end
end

# Then to use it in the terminal: `rake server:kill`
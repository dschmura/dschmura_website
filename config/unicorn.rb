root = "/home/deployer/apps/dschmura_website/current"
working_directory root
pid "#{root}/tmp/pids/dschmura_website.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.dschmura_website.sock"
worker_processes 2
timeout 30
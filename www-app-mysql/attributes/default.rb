default[:mysql][:metric_definition_id] = nil # MUST be provided
default[:mysql][:username] = "root"
default[:mysql][:password] = "root"
default[:mysql][:db] = "benchmark"
default[:mysql][:table_size] = 100000
default[:mysql][:max_time] = 600
default[:mysql][:repetitions] = 3
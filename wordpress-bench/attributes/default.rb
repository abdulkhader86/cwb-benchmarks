# Cloud WorkBench
default['wordpress-bench']['num_repetitions'] = 1

# Fake data generator
default['wordpress-bench']['500px_customer_key'] = ''
default['wordpress-bench']['batch_size'] = 25

# Load generator endpoint
default['wordpress-bench']['load_generator'] = 'localhost'

# Cookbook wherein the `test_plan.jmx` resides
default['wordpress-bench']['test_plan_cookbook'] = 'wordpress-bench'

## JMeter properties
# Site URL
http_site = node['wordpress']['site']['url']
default['wordpress-bench']['jmeter']['properties']['site'] = (http_site.sub('http://', '') rescue '127.0.0.1')
# Thread-group specific
default['wordpress-bench']['jmeter']['properties']['target_concurrency'] = 80 # i.e., users
default['wordpress-bench']['jmeter']['properties']['ramp_up_time'] = 5 # time while the users are gradually increased
default['wordpress-bench']['jmeter']['properties']['ramp_up_steps_count'] = 7 # number of steps from 0 to [target_concurrency]
default['wordpress-bench']['jmeter']['properties']['hold_target_rate_time'] = 2 # time to hold the target load
# Data export
# default['wordpress-bench']['jmeter']['properties']['jmeter.save.saveservice.print_field_names'] = true
# default['wordpress-bench']['jmeter']['properties']['jmeter.save.saveservice.output_format'] = 'csv'
# HTTP defaults
default['wordpress-bench']['jmeter']['properties']['connect_timeout'] = 10000
default['wordpress-bench']['jmeter']['properties']['response_timeout'] = 40000

### EXTERNAL
# Setting here at attribute resolution time because of the dependent
# attribute `default['wordpress']['url']` in the `wordpress` cookbook
default['wordpress']['version'] = '4.7.1'
default['wordpress']['url'] = "https://wordpress.org/wordpress-#{node['wordpress']['version']}.tar.gz"
# # Make sure the dependent wordpress url gets updated
# include_attribute 'wordpress::default'

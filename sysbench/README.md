# Sysbench

Installs the sysbench benchmark and provides utilities to integrate with Cloud WorkBench.
Currently, only the CPU test mode is supported.

## Supported Platforms

Should work for Ubuntu and Debian.

* Ubuntu 14.04 (manually tested)

## Attributes

See attributes/default.rb

## Usage

### Cloud WorkBench

* Create a ratio-scale metric called `time` which reports results in `seconds`
* Create a nominal-scale metric called `cpu` which reports the `model name`

### Sysbench Reference

* [Ubuntu Manuals](http://manpages.ubuntu.com/manpages/trusty/man1/sysbench.1.html)
* [Sysbench Tutorial](http://www.howtoforge.com/how-to-benchmark-your-system-cpu-file-io-mysql-with-sysbench)

### sysbench::default

Add the `sysbench` default recipe to your Chef configuration:

```ruby
config.vm.provision "chef_client", id: "chef_client" do |chef|
  chef.add_recipe "sysbench@1.0.0"
  chef.json =
  {
    "sysbench" => {
        "cli_options" => {
            "test" => "cpu",
            "cpu-max-prime" => 4_000
        }
    }
  }
end
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Joel Scheuner (joel.scheuner.dev@gmail.com)
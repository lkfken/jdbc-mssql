# Jdbc::MSSQL

<p>MSSQL JDBC - SQL Server JDBC driver for JRuby</p>
For more information see <link>https://docs.microsoft.com/en-us/sql/connect/jdbc/microsoft-jdbc-driver-for-sql-server</link>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jdbc-mssql'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jdbc-mssql

## Usage

```ruby
require 'sequel'
require 'jdbc/mssql'  # this is optional since the driver is loaded when loading the gem

DB = Sequel.conect('jdbc:sqlserver://localhost:1433;databaseName=AdventureWorks;integratedSecurity=true;')
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lkfken/jdbc-mssql.

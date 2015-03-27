# 0.2.2
## client
- Fix for activesupport 4.1.x

## server
- Do average calculation in another thread

## web
- Fix for api-pagination >= 3.0.0

# 0.2.1
## server
- ActiveRecord has updated to ~> 4.0.2
- logs are now stored as file
  - DB has length limit...
  - be careful to inode limit
- Support facter 2

## web
- API v2
  - now rrrspec-api requests trial, worker and slave logs based on user's
    request

## client
- fixed a bug where raise ArgumentError when searching configuration file
  - this had caused when process' user doesn't have home directory

# 0.2.0
Initial OSS release.
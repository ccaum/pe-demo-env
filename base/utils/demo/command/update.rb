require 'pp'
require 'json'

module Demo
  class Command::Update < Vagrant.plugin('2', :command)

    include Demo::Command::Helpers

    def initialize(argv, env)
      @argv     = argv
      @env      = env
      @cmd_name = 'demo update'

      @provider = nil

      split_argv
    end

    def execute
      argv = parse_options(parser)

      if argv.size > 1
        puts "Usage: vagrant #{@cmd_name}"
        exit 1
      end

      apply_demo_manifest
    end

    private

    def parser
      OptionParser.new do |o|
        o.banner = "Usage: vagrant #{@cmd_name}"
        o.separator ''

        o.on('-h', '--help', 'Display this help message') do
          puts o
          exit 0
        end
      end
    end
  end
end

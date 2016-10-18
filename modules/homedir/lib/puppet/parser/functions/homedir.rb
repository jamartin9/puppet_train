# homedir.rb
module Puppet::Parser::Functions
  newfunction(:homedir,
    :type  => :rvalue,
    :arity => 1
  ) do |args|
    raise ArgumentError, 'Expects a string' unless args.first.class == String

    user = args[0]
    case user
    when 'root'
      return '/root'
    else
      return "/home/#{user}"
    end
  end
end

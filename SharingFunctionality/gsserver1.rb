require 'gserver'

#
# A server that returns the time in seconds since 1970.
#

class TimeServer < GServer
  def initialize(port=10001, *args)
    super(port, *args)
  end
  
  def serve(io)
    io.puts(Time.now.to_s)
  end
end

# Run the server with logging enabled (it's a seperate thread.)

server = TimeServer.new
server.audit = true    # Turn logging on
server.start

# Now point your browser to http://localhost:10001 to see it work

#GServer.in_service?(100001) # true
#server.stopped? # false

# shut the server down gracefully.
#server.shutdown

# Alternatively, stop it immediately.
#GServer.stop(100001)
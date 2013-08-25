class RetryException < RuntimeError
  attr :ok_to_try
  def initialize(ok_to_try)
    @ok_to_try =ok_to_try
  end
end

def read_data(socket)
  data = socket.read(512)
  if data.nil?
    raise RetryException.new(true), "transient read error"
  end
  #.. normal processing
end

begin
  stuff = read_data(socket)
  # .. process stuff
rescue RetryException => detail
  retry if detail.ok_to_try
  raise
end


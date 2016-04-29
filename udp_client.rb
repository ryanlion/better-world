require 'socket'
sock = UDPSocket.new
data = '$GPGGA,123519,4807.038,N,01131.000,E,1,08,0.9,545.4,M,46.9,M,,*47'
sock.send(data, 0, '127.0.0.1', 3500)
sock.close

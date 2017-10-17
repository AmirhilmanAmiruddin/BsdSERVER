require 'socket'

server = TCPServer.open('192.168.254.128',1550)
loop{
	client = server.accept
	client.puts("Hello,client!")
	client.puts("Goodbye,client!")
	client.puts("closing connection...")
	client.close
}

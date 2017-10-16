require_relative 'conversation'

message = ARGV[0]
mary = Conversation::Person.new('Mary')

mary.speak(message, Conversation::MessageHash, 'messages.yaml')
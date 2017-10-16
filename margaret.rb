require_relative 'conversation'

message = ARGV[0]
margaret = Conversation::Person.new('Margaret')

margaret.speak(message, Conversation::MessageHash, 'messages.yaml')
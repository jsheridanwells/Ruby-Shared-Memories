require 'yaml'
module Conversation

	class Person
		attr_accessor :person_name
		def initialize(person_name)
			@person_name = person_name
		end
		def speak(message, conversation_hash, file)
			raise ArgumentError, 'You must have a message' if message.nil?
			conversation_hash[@person_name].push(message)
			update_file = File.open(file, 'w')
			update_file.write(conversation_hash.to_yaml)
		end
	end

	MessageHash = YAML.load_file('messages.yaml')

end
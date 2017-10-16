require 'minitest/autorun'
require 'yaml'
require_relative 'conversation'

class Memories_Test < MiniTest::Test
	def setup
		@Person = Conversation::Person.new('Test Person')
		@test_messages = YAML.load_file('test_messages.yaml')
	end

	def test_that_person_has_a_name
		assert @Person.person_name = 'Test Person'
	end

	def test_that_MessageHash_is_a_hash
		assert_kind_of Hash, Conversation::MessageHash
	end

	def test_that_person_can_write_to_yaml_file
		@Person.speak('test message', @test_messages, 'test_messages.yaml')
	end
end
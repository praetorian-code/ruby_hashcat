require 'rprogram/program'

module RubyHashcat
  #
  # Represents the `rhashcat` program.
  #
  class Program < RProgram::Program

    # Add a top-level method which finds and runs the program.
    def self.crack(options={}, &block)
      self.find.crack(options,&block)
    end

    # Add a method which runs the program with hashcat_task
    def crack(options={},&block)
      run_task(HashcatTask.new(options,&block))
    end

  end
end
module Rdayone
  class Journal
    attr_reader :file_path, :entries, :finder

    def initialize(file_path, finder = Rdayone::Finder)
      @file_path = file_path
      @finder = finder
      @entries = finder.find(file_path)
    end
  end
end

class BeatBox
    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(data)
        strings = data.split(" ")

        strings.each do |string|
            list.append(string)
        end
    end
end
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

    def count
        if @list.head.nil?
            count = 0
        else
            pointer = @list.head
            count = 1
            while pointer.next_node != nil
                pointer = pointer.next_node
                count += 1
            end
        end
        count
    end
end
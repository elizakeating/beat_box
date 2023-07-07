class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new(data)
    end

    def count
        if @head.nil?
            count = 0
        else
            pointer = @head
            count = 1
            while pointer.next_node != nil
                pointer = pointer.next_node
                count += 1
            end
        end
        count
    end

    def to_string
        head.data.to_s
    end
end
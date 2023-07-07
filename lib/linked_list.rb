class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head.nil? # if the list is empty, the new node goes at the beginning
            @head = Node.new(data)
        else
            pointer = @head # if there is a head, we need to start there, so the pointer starts there
            while pointer.next_node != nil # iterate through list until pointer.next_node IS nil, which means its the last node in the list
                pointer = pointer.next_node # changes the pointer each time pointer.next ISN'T nil
            end
            pointer.next_node = Node.new(data) # sets what would be 'nil' to the new node (NEEDED TO TURN next_node TO ACCESSOR FOR THIS!)
        end
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
        if @head.next_node.nil?
            head.data.to_s
        else
            string = ""
            pointer = @head
            while pointer.next_node != nil
                string += "#{pointer.data} "
                pointer = pointer.next_node
            end
            string += "#{pointer.data}"
        end
    end
end
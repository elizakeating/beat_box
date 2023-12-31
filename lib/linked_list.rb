class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head.nil?
            @head = Node.new(data)
        else
            pointer = @head
            while pointer.next_node != nil
                pointer = pointer.next_node
            end
            pointer.next_node = Node.new(data)
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
        if @head.nil?
            "This list is empty."
        elsif @head.next_node.nil?
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

    def prepend(data)
        if @head.nil?
            @head = Node.new(data)
        else
            pointer = @head
            @head = Node.new(data)
            @head.next_node = pointer
        end
    end

    def insert(position, data)
        pointer = @head
        count = 0
        previous = nil     
        loop do           
            if count == position               
                new_node = previous.next_node = Node.new(data)               
                new_node.next_node = pointer                
                break
            else               
                previous = pointer               
                pointer = pointer.next_node                
                count += 1               
            end
        end
    end

    def find(position, elements)
        pointer = @head
        count = 0
        num_elements = 0
        string = ""

        while pointer.next_node != nil
            until count == position
                pointer = pointer.next_node
                count += 1
            end
            if elements == 1
                string += "#{pointer.data}"
                break
            else
                until num_elements == elements - 1
                    string += "#{pointer.data} "
                    pointer = pointer.next_node
                    num_elements += 1
                end
                string += "#{pointer.data}"
                break
            end
        end
        string
    end

    def includes?(value)
        pointer = @head
        result = nil
        
        while pointer.next_node != nil
            if pointer.data == value
                result = true
                break
            else
                result = false
                pointer = pointer.next_node
            end
        end
        result
    end

    def pop
        pointer = @head
        previous = nil

        while pointer.next_node != nil
            previous = pointer
            pointer = pointer.next_node 
        end
        previous.next_node = nil
        pointer.data
    end
end
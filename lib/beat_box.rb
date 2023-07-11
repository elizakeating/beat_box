class BeatBox
    attr_reader :list

    def initialize(data = nil)
        @list = LinkedList.new
        if data != nil
            list.head = Node.new(data) 
        end
        # require 'pry';binding.pry
    end

    def append(data)
        strings = data.split(" ")

        valids = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
        beats_valid = []
        
        strings.each do |string|
            valids.each do |valid|
                if string == valid
                    beats_valid << string
                end
            end
        end
        # require 'pry';binding.pry
        beats_valid.each do |beat|
            list.append(beat)
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

    def play
        pointer = @list.head
        beats = ""
        
        while pointer.next_node != nil
            beats += "#{pointer.data} "
            pointer = pointer.next_node
        end
        beats += "#{pointer.data}"
        
        `say -r 250 -v Boing #{beats}`
    end

    def all
        list.to_string
    end

    def prepend(data)
        strings = data.split(" ")

        valids = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
        beats_valid = []

        strings.each do |string|
            valids.each do |valid|
                if string == valid
                    beats_valid << string
                end
            end
        end
        # require 'pry';binding.pry
        beats_valid.each do |beat|
            list.prepend(beat)
        end
    end
end
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    describe "#initialize" do
        it "exists" do
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)
        end
    end

    describe "#head" do
        it "returns head" do
            list = LinkedList.new

            expect(list.head).to eq(nil)
        end
    end

    describe "#append" do
        it "appends list with node data" do
            list = LinkedList.new
            list.append("doop")

            expect(list).to be_an_instance_of(LinkedList)
            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to eq(nil)
        end
        it "appends list with multiple nodes" do
            list = LinkedList.new 
            list.append("doop")
            list.append("deep")

            expect(list).to be_an_instance_of(LinkedList)
            expect(list.head.next_node).to be_an_instance_of(Node)
        end
        it "appends with three or more nodes" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            list.append("woop")
            list.append("weep")

            position_1 = list.head.next_node
            position_2 = position_1.next_node
            position_3 = position_2.next_node
            
            expect(list).to be_an_instance_of(LinkedList)
            expect(position_1).to be_an_instance_of(Node)
            expect(position_1.data).to eq("deep")
            expect(position_2).to be_an_instance_of(Node)
            expect(position_2.data).to eq("woop")
            expect(position_3).to be_an_instance_of(Node)
            expect(position_3.data).to eq("weep")
        end
    end
    
    describe "#count" do
        it "returns how many things are in the list" do
            list = LinkedList.new
            list.append("doop")
            
            expect(list.count).to eq(1)
        end
        it "counts list with multiple nodes" do
            list = LinkedList.new 
            list.append("doop")
            list.append("deep")
            
            expect(list.count).to eq(2)
        end
        it "counts with three or more nodes" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            
            expect(list.count).to eq(3)
        end
    end
    
    describe "#to_string" do
        it "returns statement when there is no data" do
            list = LinkedList.new
            
            expect(list.to_string).to eq("This list is empty.")
        end
        it "returns string of data" do
            list = LinkedList.new
            list.append("doop")
            
            expect(list.to_string).to eq("doop")
        end
        it "returns string of all node data with multiple nodes" do
            list = LinkedList.new 
            list.append("doop")
            list.append("deep")
            
            expect(list.to_string).to eq("doop deep")
        end
        it "returns string of all node data with three or more nodes" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            list.append("woop")
            list.append("weep")

            expect(list.to_string).to eq("doop deep woop weep")
        end
    end

    describe "#prepend" do
        it "adds node to the beginning of the list" do
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)

            list.append("plop")

            expect(list.to_string).to eq("plop")

            list.append("suu")

            expect(list.to_string).to eq("plop suu")

            list.prepend("dop")

            expect(list.to_string).to eq("dop plop suu")
        end
    end

    describe "#insert" do
        it "inserts node at selected position"do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(1, "woo")
            
            expect(list.to_string).to eq("dop woo plop suu")
        end
        it "inserts node at selected position farther in list" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(2, "woo")

            expect(list.to_string).to eq("dop plop woo suu")
        end
    end

    describe "#find" do
        it "returns specific number of elements at specific position" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.to_string).to eq("deep woo shi shu blop")
            expect(list.find(2, 1)).to eq("shi")
            expect(list.find(1, 3)).to eq("woo shi shu")
        end
    end

    describe "#includes?" do
        it "returns true or false based on whether the value is in the list" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.includes?("deep")).to be true
            expect(list.includes?("dep")).to be false
        end
    end

    describe "#pop" do
        it "removes the last element of the list and returns it" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.pop).to eq("blop")
            expect(list.to_string).to eq("deep woo shi shu")
            expect(list.pop).to eq("shu")
            expect(list.to_string).to eq("deep woo shi")
        end
    end
end
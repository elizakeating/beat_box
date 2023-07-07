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
    end

    describe "#to_string" do
        it "returns string of all elements in list" do
            list = LinkedList.new
            list.append("doop")

            expect(list.to_string).to eq("doop")
        end
    end
end
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
    end
end
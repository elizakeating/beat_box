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
end
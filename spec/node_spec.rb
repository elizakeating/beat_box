require "./lib/node"

RSpec.describe Node do
    describe "#initialize" do
        it "exists" do
            node = Node.new("plop")

            expect(node).to be_an_instance_of(Node)
        end
    end

    describe "#data" do
        it "returns data" do
            node = Node.new("plop")

            expect(node.data).to eq("plop")
        end
    end

    describe "#next_node" do
        it "returns next node" do
            node = Node.new("plop")

            expect(node.next_node).to eq(nil)
        end
    end
end
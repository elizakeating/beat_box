require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
    describe "#initialize" do
        it "exists" do
            bb = BeatBox.new
            
            expect(bb).to be_an_instance_of(BeatBox)
            expect(bb.list).to be_an_instance_of(LinkedList)
        end
    end
end
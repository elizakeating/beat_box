require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
    describe "#initialize" do
        it "exists" do
            bb = BeatBox.new
            
            expect(bb).to be_an_instance_of(BeatBox)
        end
    end

    describe "#list" do
        it "has readable attributes" do
            bb = BeatBox.new

            expect(bb.list).to be_an_instance_of(LinkedList)
            # require 'pry';binding.pry
            expect(bb.list.head).to eq(nil)
        end
    end

    describe "#append" do
        it "adds three nodes to beatbox list" do
            bb = BeatBox.new
            bb.append("deep doo ditt")

            expect(bb.list.head.data).to eq("deep")
            expect(bb.list.head.next_node.data).to eq("doo")
        end
        it "only includes valid beats" do
            bb = BeatBox.new("deep")
            # require 'pry';binding.pry
            bb.append("Mississippi")
            # require 'pry';binding.pry

            expect(bb.all).to eq("deep")  
        end
    end

    describe "#count" do
        it "counts amount of beats/nodes in beatbox" do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")

            expect(bb.count).to eq(6)
        end
    end

    describe "#play" do
        it "generates string content of beat and inputs it to say command" do
            bb = BeatBox.new
            bb.append("deep doo ditt woo hoo shu")
            
            expect(bb.count).to eq(6)
            expect(bb.list.count).to eq(6)
            
            bb.play
        end
    end

    describe "#prepend" do
        it "adds only valid beats to beginning" do
            bb = BeatBox.new("deep")
            bb.append("Mississippi")
            bb.prepend("tee tee tee Mississippi")

            expect(bb.all).to eq("tee tee tee deep")
            # require 'pry';binding.pry
        end
    end
end
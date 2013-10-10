require 'spec_helper'

describe Movie do
  let(:movie) { Movie.new }

  describe "#snippet" do
    context "when description is less than or equal to 50 characters" do 
      it "returns the full description" do

        allow(movie).to receive(:description).and_return('asdfasdfljkasdfljkasdf')

        expect(movie.snippet).to eq('asdfasdfljkasdfljkasdf')
      end
    end

    context "when description is greater than 50 characters" do
      it "returns the first 47 characters and appends '...'" do

        allow(movie).to receive(:description).and_return('An offbeat romantic comedy about a woman who doasdfasdfadsfadsfaafdsafdasfasdfasfs')

        expect(movie.snippet).to eq('An offbeat romantic comedy about a woman who do...')
      end
    end
  end


end

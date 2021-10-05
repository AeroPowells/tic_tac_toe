# frozen_string_literal: true

require 'spec_helper'

module TicTacToe
  describe Cell do
    # tests will be added here
    context '#initialize' do
      it "is initiated with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it 'is initialized with set value, in this case \"X\"' do
        cell = Cell.new('X')
        expect(cell.value).to eq 'X'
      end
    end
  end
end

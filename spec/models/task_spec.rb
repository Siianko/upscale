require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :budget }
    it { is_expected.to have_db_column :state }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :location }
    it { is_expected.to validate_presence_of :budget }
    it { is_expected.to validate_presence_of :state }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:task)).to be_valid
    end
  end

  describe 'Associations' do  
    it {is_expected.to belong_to :user}
  end

  describe 'Status - Checking for States, Events and Transistions' do
    subject { create(:task) }
    
    it { is_expected.to have_states :open, :pending, :in_production, :closed }
    it { is_expected.to handle_events :receive_bid, when: :open }
    it { is_expected.to handle_events :accept_bid, when: :pending }

    it ':accept_bid transitions from :open to :pending' do
      subject.receive_bid
      expect(subject.pending?).to eq true
    end
  end
end

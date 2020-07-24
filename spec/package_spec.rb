require 'rails_helper'
RSpec.describe Package do
  subject { described_class.new(owner: owner) }

  context 'when owned by User' do
    let(:owner) { User.new }

    it do
      expect(subject).not_to be_company_owned
    end
  end

  context 'when owned by Company' do
    let(:owner) { Company.new }

    it do
      expect(subject).to be_company_owned
    end
  end
end
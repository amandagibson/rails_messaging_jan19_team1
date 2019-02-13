require "rails_helper"

RSpec.describe Test, type: :model do
    describe 'DB table' do
        it { is_expected.to have_db_column :id }
        it { is_expected.to have_db_column :email }
        it { is_expected.to have_db_column :password }
    end

    describe 'Validatons' do
        it { is_expected.to validate_presence_of :email }
        it { is_expected.to validate_presence_of :password }
    end

    describe 'Factory' do
        it 'should have a valid factory' do
            expect(FactoryBot.create(:test)).to be_valid
        end
    end
end

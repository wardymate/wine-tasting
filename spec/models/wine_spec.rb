require 'spec_helper'
require 'rails_helper'

describe Wine, type: :model do

  it { is_expected.to belong_to :event }
end

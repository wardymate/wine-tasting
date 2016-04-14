require 'spec_helper'
require 'rails_helper'

describe Event, type: :model do

  it { is_expected.to have_many :wines }
end

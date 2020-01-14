require 'rails_helper'

describe Tournament do
  it { should belong_to(:team) }
end

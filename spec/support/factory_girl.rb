# RSpec
# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

# Test::Unit
class Test::Unit::TestCase
  include FactoryGirl::Syntax::Methods
end

# Cucumber
# env.rb (Rails example location - RAILS_ROOT/features/support/env.rb)
World(FactoryGirl::Syntax::Methods)

# Spinach
class Spinach::FeatureSteps
  include FactoryGirl::Syntax::Methods
end

# Minitest
class Minitest::Unit::TestCase
  include FactoryGirl::Syntax::Methods
end

# Minitest::Spec
class Minitest::Spec
  include FactoryGirl::Syntax::Methods
end

# minitest-rails
class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end
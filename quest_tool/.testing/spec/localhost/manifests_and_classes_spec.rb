require 'spec_helper'

describe "Task 1:" do
  it 'Define the cowsayings::cowsay class' do
    file("#{MODULE_PATH}cowsayings/manifests/cowsay.pp").should be_file
    file("#{MODULE_PATH}cowsayings/manifests/cowsay.pp").should contain /class cowsayings::cowsay {/
  end
end

describe "Task 2:" do
  it 'Include the cowsayings::cowsay class in a test manifest' do
    file("#{MODULE_PATH}cowsayings/tests/cowsay.pp").should be_file
    file("#{MODULE_PATH}cowsayings/tests/cowsay.pp").should contain /include cowsayings::cowsay/
  end
end

describe "Task 2:" do
  it 'Apply the test manifest to install the cowsay package' do
    file('/usr/bin/cowsay').should be_file
  end
end

describe "Task 3:" do
  it 'Define the cowsayings::fortune class' do
    file("#{MODULE_PATH}cowsayings/manifests/fortune.pp").should be_file
    file("#{MODULE_PATH}cowsayings/manifests/fortune.pp").should contain /class cowsayings::fortune/
  end
end

describe "Task 4:" do
  it 'Include the cowsayings::fortune class in a test manifest' do
    file("#{MODULE_PATH}cowsayings/tests/fortune.pp").should be_file
    file("#{MODULE_PATH}cowsayings/tests/fortune.pp").should contain /include cowsayings::fortune/
  end
end

describe "Task 5:" do
  it 'Apply the test manifest to install the fortune package' do
    file('/usr/bin/fortune').should be_file
  end
end

describe "Task 6:" do
  it 'Define the cowsayings class' do
    file("#{MODULE_PATH}cowsayings/manifests/init.pp").should be_file
    file("#{MODULE_PATH}cowsayings/manifests/init.pp").should contain /class cowsayings {/
  end
end

describe "Task 7:" do
  it 'Include the cowsayings class in a test manifest' do
    file("#{MODULE_PATH}cowsayings/tests/init.pp").should be_file
    file("#{MODULE_PATH}cowsayings/tests/init.pp").should contain /include cowsayings/
  end
end

describe "Task 8:" do
  it "Apply the test manifest to install the fortune and cowsay packages" do
    file("#{MODULE_PATH}cowsayings/tests/init.pp").should be_file
    file('/usr/bin/cowsay').should be_file
    file('/usr/bin/fortune').should be_file
  end
end

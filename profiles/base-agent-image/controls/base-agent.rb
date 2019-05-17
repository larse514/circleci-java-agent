control 'gem list' do
  impact 1.0
  title 'confirm ruby gems installed'
  desc 'Confirm correct version of ruby gems'
  describe command('gem list') do
    its('stdout') { should include ('awspec') }
    its('stdout') { should include ('rake (12.3.2)') }
    its('stdout') { should include ('bigdecimal') }
    its('stdout') { should include ('webrick') }
    its('stdout') { should include ('aws-sdk') }

  end
end

control 'awspec version' do
  impact 1.0
  title 'confirm awspec dependencies are installed'
  desc 'Confirm correct version and dependencies of awspec gems'
  describe command('awspec --version') do
    its('stdout') { should include ('1.17.2') }
  end
end

control 'terraform version' do
  impact 1.0
  title 'confirm terraform version installed'
  desc 'confirm version reported by terraform matches the desired version'
  describe command('terraform -v') do
    its('stdout') { should include ('0.11') }
  end
end


control 'aws-cli version' do
  impact 1.0
  title 'confirm aws-cli version installed'
  desc 'confirm version reported by aws-cli matches the desired version'
  describe command('aws --version') do
    its('stdout') { should include ('1.16') }
  end
end

control 'kops version' do
  impact 1.0
  title 'confirm kops version installed'
  desc 'confirm version reported by kops matches the desired version'
  describe command('kops version') do
    its('stdout') { should include ('1.11') }
  end
end

control 'kubectl version' do
  impact 1.0
  title 'confirm kubectl version installed'
  desc 'confirm version reported by kubectl matches the desired version'
  describe command('kubectl version') do
    its('stdout') { should include ('v1.13') }
  end
end
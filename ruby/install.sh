
# Setup Ruby Environment
# Set global to use version 2.5.1 (Mainly to move it away from system's version of Ruby)
echo "Installing Ruby"
eval "$(rbenv init -)"
rbenv install 2.5.1
rbenv global 2.5.1
ruby --version

# Install and link bundle with rbenv
echo "Installing bundler"
gem install bundler
ruby -r bundler -e "puts RUBY_VERSION"
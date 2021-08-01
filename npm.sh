# Set permissions
echo "Setting npm permissions"
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading npm clis"
sudo npm i -g eslint
sudo npm i -g serverless
sudo npm i -g yarn
sudo npm i -g typescript
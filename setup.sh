
# updating the current system
sudo apt-get update

# installing dosbox
sudo apt-get install dosbox

# creating repository
sudo mkdir -p ~/nasm-lab

# giving permission
sudo chmod 777 ~/nasm-lab


# moving files to nasm-lab
sudo cp -r * ~/nasm-lab

# adding automatic mounting in dosbox configuration file
dosbox &
sleep 4s
killall dosbox

#getting the config file name

file=$(ls ~/.dosbox)
dir="$HOME/nasm-lab/"
sudo sed "/autoexec/ a mount c $dir\nC:" ~/.dosbox/$file |sudo tee -a ~/.dosbox/$file

echo "################SETUPT FINISHED####################"
echo "PLEASE TAKE A NOTE OF WORKING DIRECTROY WHERE YOU WILL BE DOING YOUR LABS"
echo "working Directory:$dir"

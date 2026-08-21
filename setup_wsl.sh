# update system
sudo apt update && sudo apt -y upgrade

# install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
# when prompted below, install in /opt/miniconda3
sudo ./Miniconda3-latest-Linux-x86_64.sh
# give all users access to the conda binaries
sudo chmod -R 777 /opt/miniconda3
echo 'export PATH="/opt/miniconda3/bin:$PATH"' | sudo tee /etc/profile.d/conda.sh
sudo chmod 744 /etc/profile.d/conda.sh
export PATH="/opt/miniconda3/bin:$PATH"
conda init bash
# Source conda directly instead of relying on .bashrc
eval "$(/opt/miniconda3/bin/conda shell.bash hook)"

# setup cuda

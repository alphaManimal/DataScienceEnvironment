HOME=/home/vagrant

log () {
        echo "[kick-ass-data-science] $1" | tee -a $HOME/bootstrap.log
}

log 'Retrieving updated list of packages...'
apt-get install build-essential
apt-get update

log 'Installing common requirements...'
apt-get install -y curl git python-pip make python-dev 

log 'Installing Python stack...'
apt-get install -y python-numpy python-scipy python-matplotlib python-pandas python-scikits.learn python-mysqldb python-lxml python-lxml-dbg

sudo pip install pyzmq tornado ipython Flask SQLAlchemy beautifulsoup4 lxml nltk dataset pymongo cython


log 'Installing R'
sudo apt-get install r-base r-base-dev

log 'Finished bootstrapping A kick ass Data Science environment'

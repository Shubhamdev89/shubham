if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jakharamit44/shubham /shubham
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /shubham
fi
cd /shubham
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

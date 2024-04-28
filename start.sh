if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Autofilterbot1234/CtgAutofilterbot/commits?author=Autofilterbot1234 /CtgAutofilterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /CtgAutofilterbot
fi
cd /CtgAutofilterbot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py

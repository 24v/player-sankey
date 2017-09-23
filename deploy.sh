cat <<EOF > ~/.netrc
machine api.heroku.com
  password $API_KEY
  login $USERNAME
machine git.heroku.com
  password $API_KEY
  login $USERNAME
EOF

yarn babel-node tools/run deploy

function _nginx {
  _package nginx "1.1.19*"

  cp nginx/nginx.conf /etc/nginx/

  sudo service nginx restart
}

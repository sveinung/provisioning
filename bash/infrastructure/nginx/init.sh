function _nginx {
  _package nginx "1.1.19*"

  sudo service nginx restart
}

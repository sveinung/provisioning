function _nginx_reverse_proxy {
  local NAME=$1

  cp nginx/reverse-proxy.conf /etc/nginx/conf.d/$NAME.conf

  service nginx restart
}

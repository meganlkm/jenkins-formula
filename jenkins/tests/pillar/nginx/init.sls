nginx:
  ng:
    from_source: False
    service:
      enable: true
    server:
      config:
        worker_processes: '20'
        error_log: '/var/log/nginx/error.log'
        pid: '/run/nginx.pid'
        events:
          worker_connections: '1024'
          multi_accept: 'on'
        http:
          log_format: 'request_time "$remote_addr [$time_local] ''$request'' $http_host $status $body_bytes_sent $request_time"'
          access_log: '/var/log/nginx/access.log'
          sendfile: 'on'
          keepalive_timeout: '65'
          default_type: 'application/octet-stream'
          types_hash_max_size: '2048'
          tcp_nodelay: 'on'
          gzip: 'on'
          gzip_disable: 'msie6'
          include:
            - '/etc/nginx/mime.types'
            - '/etc/nginx/conf.d/*.conf'
            - '/etc/nginx/sites-enabled/*'

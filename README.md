# howto-systemd-service

*Create an example Linux systemd-based service (daemon)*

Based on the [Medium article][1] by Benjamin Morel

I am using Ubuntu 18.04.1 LTS

The example **rot13** service in the article uses PHP.

Check you have PHP installed:

```[bash]
php -v || apt list php
```

If not, you can install PHP:

```[bash]
sudo apt update && sudo apt upgrade && sudo apt install -y php
```

To **install** the example PHP service:

```[bash]
./install-service.sh
```

To **start** the service, and test it:

```[bash]
sudo systemctl start rot13
nc -u 127.0.0.1 10000
Hello, world!
```

To **stop** the service:

```[bash]
sudo systemctl stop rot13
```

To **autostart** the service on system boot:

```[bash]
sudo systemctl enable rot13
```


To **uninstall** the example PHP service:

```[bash]
./uninstall-service.sh
```

To remove PHP and any unrequired dependencies:

```[bash]
sudo apt remove -y php && sudo apt autoremove -y
```






[1]: https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6

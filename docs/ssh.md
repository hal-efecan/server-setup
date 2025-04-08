# TEMP ALLOW PASSWORD AUTHENTICATION via SSH

```bash
sudo nano /etc/ssh/sshd_config
```

change `PasswordAuthentication` to yes
change `KbdInteractiveAuthentication` to yes

```bash
sudo systemctl restart ssh
```

# PERM DISABLE ROOT PASSWORD AUTHENTICATION
# PERM CREATE SSH KEY
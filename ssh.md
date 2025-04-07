# TEMP ALLOW PASSWORD AUTHENTICATION via SSH

sudo nano /etc/ssh/sshd_config

change `PasswordAuthentication` to yes
change `KbdInteractiveAuthentication` to yes

sudo systemctl restart ssh

# PERM DISABLE ROOT PASSWORD AUTHENTICATION
# PERM CREATE SSH KEY
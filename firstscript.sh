#!/bin/bash
for i  in `cat /etc/trueuserdomains   | awk '{print $2}'`
do
chown $i.$i /home/$i -R;
chown $i.mail /home/$i/etc -R;
chown $i.nobody /home/$i/public_html;
done;

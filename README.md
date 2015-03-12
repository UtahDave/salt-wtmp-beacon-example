# salt-wtmp-beacon-example

Example of using wtmp beacon to send text messages when a user logs in to a
system. This example requires an account on twilio.com.

The reactor file assumes that we're going to have the origin minion also send
the text message through the twilio account. In order to be able to send a text
through the twilio account, the minion will need the `twilio` python module
installed. The twilio python module can be installed like this:

```
pip install -U twilio
```

The files in the `files` directory should go in their respective locations on
your Salt Master and Salt Minion.

Modify `/etc/salt/minion.d/twilio_creds.conf` to reflect your twilio configs.
Modify `/srv/reactor/logins.sls` to reflect your target phone number you wish
to notify of logins and also the phone number for your twilio account.

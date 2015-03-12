notify_group:
  local.twilio.send_sms:
    - tgt: {{ data['data']['id'] }}
    - arg:
      - "my-twilio-account"
      - {{ data['data']['user'] }} logged in to {{ data['data']['id'] }} at {{ data['_stamp'] }}

        # Destination Phone number
      - "+1<destination_phone_number>"

        # Sending (Twilio) Phone number
      - "+1<sending_phone_number>"

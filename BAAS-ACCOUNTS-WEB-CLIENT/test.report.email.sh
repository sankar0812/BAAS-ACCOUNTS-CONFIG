# CreatedBy     : Harish Raj
# CreatedTime   : 21 Feb 2023

#!/bin/bash

# SMTP server settings
SMTP_SERVER="smtp.office365.com"
SMTP_PORT="587"
SMTP_USERNAME="it.support@gove.co"
SMTP_PASSWORD="SolWer@345"
SMTP_FROM="it.support@gove.co"
SMTP_TO="thanga.mariappan@gove.co,harish_raj@gove.co,dineshpandian@gove.co,senthilkumar@gove.co,arumugam.petchikumar@gove.co"
SMTP_SUBJECT="[TEST FAILED] - [DEPLOYMENT ENDS]: DEV_BASS-ACCOUNTS-WEB-CLIENT"
SMTP_BODY="The Test cases are failed. So,the code is reverted back and attached the test report.Check the code once again."
SMTP_ATTACHMENT="/ops/jenkins/workspace/DEV_BASS-ACCOUNTS-WEB-CLIENT/test-report.html"

# Send email with attachment using swaks
swaks --from $SMTP_FROM \
    --to $SMTP_TO \
    --server $SMTP_SERVER:$SMTP_PORT \
    --auth-user $SMTP_USERNAME \
    --auth-password $SMTP_PASSWORD \
    --tls \
    --header "Subject: $SMTP_SUBJECT" \
    --body "$SMTP_BODY" \
    --attach "$SMTP_ATTACHMENT"
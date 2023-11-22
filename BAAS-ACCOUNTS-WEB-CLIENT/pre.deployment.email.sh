SMTP_SERVER="smtp.office365.com"
SMTP_PORT="587"
SMTP_USERNAME="it.support@gove.co"
SMTP_PASSWORD="SolWer@345"
SMTP_FROM="it.support@gove.co"
SMTP_TO="thanga.mariappan@gove.co,harish_raj@gove.co,dineshpandian@gove.co,karthick@gove.co,arumugam.petchikumar@gove.co,ayerathammal.paramasivan@gove.co,uma.kohila@gove.co,pradeepa.sekar@gove.co,diviya.rathinamoorthi@gove.co,senthilkumar@alitasys.com"
SMTP_SUBJECT="[DEV] - [DEPLOYMENT STARTS] : DEV_BASS-ACCOUNTS-WEB-CLIENT"_${BUILD_NUMBER}
SMTP_BODY="Automated Deployment for DEV_BASS-ACCOUNTS-WEB-CLIENT has been initiated by code change in the origin/develop branch, please stand by, an email will be sent after deployment has been completed."
# Combine the message body and signature
message_with_signature="$SMTP_BODY\n\n Tech Ops\n Gove Enterprises"

# Send email with attachment using swaks
swaks --from $SMTP_FROM \
      --to $SMTP_TO \
      --server $SMTP_SERVER:$SMTP_PORT \
      --auth-user $SMTP_USERNAME \
      --auth-password $SMTP_PASSWORD \
      --tls \
      --header "Subject: $SMTP_SUBJECT" \
      --body "$message_with_signature"
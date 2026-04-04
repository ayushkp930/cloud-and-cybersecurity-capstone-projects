# Enable secure boot
gcloud compute instances update cc-app-02 \
--shielded-secure-boot \
--zone=us-east1-c

# Start VM
gcloud compute instances start cc-app-02 --zone=us-east1-c

# Delete compromised VM
gcloud compute instances delete cc-app-01 \
--zone=us-east1-c \
--quiet

# Secure bucket
gcloud storage buckets update gs://BUCKET_NAME \
--uniform-bucket-level-access

# Create restricted firewall rule
gcloud compute firewall-rules create limit-ports \
--network=default \
--action=ALLOW \
--direction=INGRESS \
--source-ranges=35.235.240.0/20 \
--target-tags=cc \
--rules=tcp:22 \
--enable-logging

# Delete insecure rules
gcloud compute firewall-rules delete \
default-allow-icmp \
default-allow-rdp \
default-allow-ssh \
--quiet

# Enable logging
gcloud compute firewall-rules update limit-ports --enable-logging
gcloud compute firewall-rules update default-allow-internal --enable-logging
#!/bin/bash
REGION="us-east-1"
aws securitylake create-data-lake --regions $REGION --enable-all-regions
aws securitylake create-data-lake-source --sources CloudTrail,VPCFlow,Route53
echo "✅ Security Lake enabled and sources configured in $REGION."

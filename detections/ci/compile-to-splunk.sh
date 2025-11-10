#!/bin/bash
echo " Compiling Sigma rules to Splunk..."
docker run --rm -v $(pwd):/repo sigmahq/sigma-cli convert \
  --target splunk --output ./detections/compiled/
echo "✅ Compilation complete."

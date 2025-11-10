import pandas as pd, pathlib

raw = pd.read_json('cloudtrail-events.json', lines=True)
ocsf = raw.rename(columns={
    'eventName': 'activity_name',
    'eventSource': 'service_name',
    'userIdentity.arn': 'user_uid',
    'sourceIPAddress': 'src_ip'
})
pathlib.Path("ocsf/normalized").mkdir(parents=True, exist_ok=True)
ocsf.to_parquet("ocsf/normalized/cloudtrail.parquet")
print("✅ OCSF normalization complete.")

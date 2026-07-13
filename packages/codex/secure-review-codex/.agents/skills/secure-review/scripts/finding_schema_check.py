#!/usr/bin/env python3
import json, sys
required = ['title','status','severity','confidence','affected_file','impact','remediation']
path = sys.argv[1] if len(sys.argv) > 1 else 'validated-findings.json'
try:
    data = json.load(open(path, encoding='utf-8'))
except Exception as e:
    print(f'Could not read JSON: {e}')
    sys.exit(1)
items = data if isinstance(data, list) else data.get('findings', [])
failed = False
for i, item in enumerate(items):
    missing = [k for k in required if not item.get(k)]
    if missing:
        print(f'Finding {i} missing: {missing}')
        failed = True
sys.exit(1 if failed else 0)

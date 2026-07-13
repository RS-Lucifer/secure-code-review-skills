#!/usr/bin/env python3
import re, sys
patterns = [
    re.compile(r"(?i)(api[_-]?key|token|secret|password)\s*[:=]\s*(?:[\"'][^\"']+[\"']|[^\"'\s]+)"),
    re.compile(r'-----BEGIN [A-Z ]+PRIVATE KEY-----.*?-----END [A-Z ]+PRIVATE KEY-----', re.S),
]
text = sys.stdin.read()
for p in patterns:
    text = p.sub('[REDACTED_SECRET]', text)
print(text)

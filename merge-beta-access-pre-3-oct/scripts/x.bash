#!/usr/bin/env bash

jq -s '
    {
        "predicates": [
            {
                "predicates": map(
                    { "attribute": "company.remote_company_id", "comparison": "eq", "type": "string", "value": "\(.)" }
                ),
                "type": "or"
            }
        ],
        "type": "and"
    }
'

#!/usr/bin/env bash

jq -s '
    {
        "predicates": [
            {
                "predicates": [
                    {
                        "predicates": map(
                            { "attribute": "company.remote_company_id", "comparison": "eq", "type": "string", "value": "\(.)" }
                        ),
                        "type": "or",
                    }
                    #, { "attribute": "company.manual_tag_ids", "comparison": "nin", "type": "manual_tag", "value": "10041808" }
                ],
                "type": "and",
            }
        ],
    }
'

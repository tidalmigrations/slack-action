#! /bin/sh

set -e

curl -X POST $SLACK_WEBHOOK \
     -H "Content-type: application/json" \
     -d "{
          'attachments': [
              {
                  'author_name': '$GITHUB_REPOSITORY',
                  'text': '$SLACK_MESSAGE',
                  'color': '$SLACK_COLOUR'
              }
          ]
         }"

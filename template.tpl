___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 RawData to BigQuery",
  "categories": ["ANALYTICS", "DATA_WAREHOUSING"],
  "brand": {
    "id": "owox",
    "displayName": "OWOX"
  },
  "description": "Write GA4 raw data to BigQuery",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "tableId",
    "displayName": "ProjectId, DataSetId, TableId concatenated by dot",
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "logging",
    "checkboxText": "Enable logging for debug",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

const BigQuery = require("BigQuery");
const getAllEventData = require("getAllEventData");
const log = require("logToConsole");
const JSON = require("JSON");
const getTimestamp = require("getTimestamp");
const Math = require('Math');

let tableId = data.tableId;

const connectionInfo = getConnectionInfo(tableId);
logging(JSON.stringify(connectionInfo));

let writeData = {};
let eventData = getAllEventData();
logging(JSON.stringify(writeData));

writeData.rawData = JSON.stringify(eventData);
writeData.createdAt = Math.ceil(getTimestamp() / 1000);

const rows = [writeData];
logging(JSON.stringify(rows));

const options = {
  ignoreUnknownValues: false,
  skipInvalidRows: false,
};

BigQuery.insert(connectionInfo, rows, options, data.gtmOnSuccess, (err) => {
  log("BigQuery insert error: ", JSON.stringify(err));
  data.gtmOnFailure();
});


function logging(str) {
  if (data.logging) {
    log(str);
  }
}

function getConnectionInfo(tableId) {
  return {
    projectId: tableId.split(".")[0],
    datasetId: tableId.split(".")[1],
    tableId: tableId.split(".")[2],
  };
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_bigquery",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedTables",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "projectId"
                  },
                  {
                    "type": 1,
                    "string": "datasetId"
                  },
                  {
                    "type": 1,
                    "string": "tableId"
                  },
                  {
                    "type": 1,
                    "string": "operation"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 12/05/2022, 16:22:41



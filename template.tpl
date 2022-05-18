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
    "displayName": "OWOX",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAVISURBVHgB7Zw7aFRBFIZnN0+N7vrCgCR2WiSxi6BoJ0TQSlFES4NgqVjYKVorphQkaSUoWCkYsFMMqJUmTSqTgCSImk2Mecf55+7cnfvYm7uZnQmTPR8sd5/J3n/PzDlzzrmTWecwYtNkGaEFCagJCagJCagJCagJCagJCahJPdOksLDOCour4jhZwHGNzSyuFR+v+O+bnFlV3r8W+BvytTTkmjIs15wNPZflz2Uij8WxeD8vjlnx+bZ8HT/WBT6zWTJpA2mc+Oj0Ens7tiBO2LutcDHcjsM7DjYIISEq7nfy24nDTak/v6GAEK7/yxwb+DTnvFhpgZjXu3exs0eaxf0kEgUc4tZ25/XvmhEuDMS7fybPeriQ5Sgr4JMPs6zv/SwjGLvHReztbol9LdYLD48vkngKD9/NCE3iiAiIOe/Omz+MCAJNoE2YiIBwGJWEFbUCNOn/PBd5Pht+08uv84yIZ+Dz34gVBgTEOCfrKw8WAGErDAjYzxUmkhmeCDoTX0BY3uj0MiOSGR5fCozSbOmFRUakA8tZiS/gCFlfakanSlr52Rjd4duWq2OmwSSuu6wU2Zym0tSPDFKlqFr5Aup638FrBzZceFcLnACs4COfj15+qyzsQsYF31Vy6ulUxeceOwe6FL5AhEvHdrLH5/ewDzdb2e1Tu5lNMBKkXkJAl70vrP7W6d1s8Op+MTxtIQPqeu/BGqsmCDYHDMaUsECkmE7yxKecNpAEvc2FfPCuwGwwwpPLHa31noDVHr4inW9wSsDfRq4S4j27sI+fSIN4HklQhBiI1UwjnZkYwhOOLt8g5I1XvwLr06TkZ3X/t1fvEQKGizwuARHfjv3zH6OmYQP5owkB1eqZi6jTRVteu9CYCml0ngUuuF3z2IoQTDrebVFYVwN4W9ORXMF4Q9jxHKD0wsC2Q3TeAmF9ZxXPO6Q4FBsU50A3vTDEG7xaWtd6JQk7AgZXIlUunHfyIXWpawczAbwsWjHiWjAe8PKjLeRca8TnI5i1FdACJIPRCGBjBRKG2ts0MWKBsuXNFOHWNAzlQX5DNwUs0SZGBEQ2ps/wicCBnDjcyHOBOT8ORFoLq6oXX+15YmeHsPS4V57/DNQoHp3bazUv6PwcKDMyKj1HzEQAcQgBbdUyTAER1bJsz1HzEYDUbNt44ZHpUkYpT0O4crZqNSUEVOukRDqkZp6AzfZM3hRqRmbGQk+39PTbRsCT7aV1sRrWmMYTsNFtL4zCumoE4RY0E8jSgfMWCPGwApF4IY35pILUTMhY7TiwHcus9kZmAvldMedd7mqJ/Pi2UlrSiQgB81X2wuhbwc02SCQMKb17JpE/pBBQ9WAushX5wHZVQFfiQNkN4F34uCyaQoeKFz/aBik14F/qdazvR81eE7cZvt89JI6+6dmq6G8HVKfrC9hx0O150CZqO3NJwFaywLSoTtcXsJMsMDVqOVWxwAarqXCXUY3NFxChjOvxoA2wwop1IqC3excjkgmvsAICokxIw7g8XiNTsGAVEBDD+DpZYVkud+2MJC8ia7je4y3OV+lMAE3iEiQRAWGFj8/tYUQQbH8SZ1ixWQTEOffP5BjhAYMq122WuPEO9k9AmqhWtwEQF/Jc3Je4zN1w6ye5EcWLb/M1IyQiEYR0cKgblTsylezii8QlLjFFLg6FbLEBWcF9UZEcEJuPtXqbj6G3Jm2dqCIBk0CyU1qoPE74j4uJUJ5vVDsIwha9mR8jfKG33OJOvFac9L3ngtvgeVvgZbTTeFUTsFahng5NSEBNSEBNSEBNSEBNSEBNSEBN/gNmU0W7+cyALAAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Allows you to automatically forward GA4 events to a BigQuery table. This allows you to define new events without having to adjust the schema in BigQuery first. Detailed instructions  owox.com/c/59n",
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
logging(JSON.stringify(eventData));

writeData.rawDataOwox = JSON.stringify(eventData);
writeData.createdAt = Math.ceil(getTimestamp() / 1000);

const rows = [writeData];
logging(JSON.stringify(rows));

const options = {
  ignoreUnknownValues: false,
  skipInvalidRows: false,
};

let insertToBq = BigQuery.insert;
if (data.insertToBigQuery) {
  insertToBq = data.insertToBigQuery;
}

insertToBq(connectionInfo, rows, options, data.gtmOnSuccess, (err) => {
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

scenarios:
- name: InsertToBigQueryCallWithCorrectParams
  code: "const log = require(\"logToConsole\");\nconst Math = require('Math');\nconst\
    \ JSON = require(\"JSON\");\n\nconst projectId = 'a';\nconst datasetId = 'b';\n\
    const tableId = 'c';\nconst eventData = {'event': 'data'};\nconst timestamp =\
    \ 11111111;\n\nconst mockData = {\n  'tableId': projectId + '.' + datasetId +\
    \ '.' + tableId,\n  'logging': true,\n  'insertToBigQuery': (connectionInfo, rows)\
    \ => {\n    assertThat(rows.length).isEqualTo(1);\n    assertThat(rows[0].createdAt).isEqualTo(Math.ceil(timestamp\
    \ / 1000));\n    assertThat(JSON.parse(rows[0].rawData)).isEqualTo(eventData);\n\
    \    \n    assertThat(connectionInfo.projectId).isEqualTo(projectId);\n    assertThat(connectionInfo.datasetId).isEqualTo(datasetId);\n\
    \    assertThat(connectionInfo.tableId).isEqualTo(tableId);\n  }\n};\n\nmock('getAllEventData',\
    \ () => {\n  return eventData;\n});\n\nmock('getTimestamp', () => {\n  return\
    \ timestamp;\n});\n\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n"
setup: ''


___NOTES___

Created on 13/05/2022, 16:46:03



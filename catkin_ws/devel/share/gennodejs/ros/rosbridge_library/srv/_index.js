
"use strict";

let AddTwoInts = require('./AddTwoInts.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestEmpty = require('./TestEmpty.js')
let SendBytes = require('./SendBytes.js')
let TestNestedService = require('./TestNestedService.js')
let TestResponseOnly = require('./TestResponseOnly.js')

module.exports = {
  AddTwoInts: AddTwoInts,
  TestRequestOnly: TestRequestOnly,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestRequestAndResponse: TestRequestAndResponse,
  TestArrayRequest: TestArrayRequest,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestEmpty: TestEmpty,
  SendBytes: SendBytes,
  TestNestedService: TestNestedService,
  TestResponseOnly: TestResponseOnly,
};

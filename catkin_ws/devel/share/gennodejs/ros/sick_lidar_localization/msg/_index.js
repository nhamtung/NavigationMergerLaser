
"use strict";

let SickLocResultPortTelegramMsg = require('./SickLocResultPortTelegramMsg.js');
let SickLocResultPortHeaderMsg = require('./SickLocResultPortHeaderMsg.js');
let SickLocColaTelegramMsg = require('./SickLocColaTelegramMsg.js');
let SickLocDiagnosticMsg = require('./SickLocDiagnosticMsg.js');
let SickLocResultPortPayloadMsg = require('./SickLocResultPortPayloadMsg.js');
let SickLocResultPortCrcMsg = require('./SickLocResultPortCrcMsg.js');
let SickLocResultPortTestcaseMsg = require('./SickLocResultPortTestcaseMsg.js');

module.exports = {
  SickLocResultPortTelegramMsg: SickLocResultPortTelegramMsg,
  SickLocResultPortHeaderMsg: SickLocResultPortHeaderMsg,
  SickLocColaTelegramMsg: SickLocColaTelegramMsg,
  SickLocDiagnosticMsg: SickLocDiagnosticMsg,
  SickLocResultPortPayloadMsg: SickLocResultPortPayloadMsg,
  SickLocResultPortCrcMsg: SickLocResultPortCrcMsg,
  SickLocResultPortTestcaseMsg: SickLocResultPortTestcaseMsg,
};

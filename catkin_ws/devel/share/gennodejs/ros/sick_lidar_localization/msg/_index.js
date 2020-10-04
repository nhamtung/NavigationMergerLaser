
"use strict";

let SickLocResultPortPayloadMsg = require('./SickLocResultPortPayloadMsg.js');
let SickLocResultPortTestcaseMsg = require('./SickLocResultPortTestcaseMsg.js');
let SickLocColaTelegramMsg = require('./SickLocColaTelegramMsg.js');
let SickLocResultPortHeaderMsg = require('./SickLocResultPortHeaderMsg.js');
let SickLocResultPortTelegramMsg = require('./SickLocResultPortTelegramMsg.js');
let SickLocDiagnosticMsg = require('./SickLocDiagnosticMsg.js');
let SickLocResultPortCrcMsg = require('./SickLocResultPortCrcMsg.js');

module.exports = {
  SickLocResultPortPayloadMsg: SickLocResultPortPayloadMsg,
  SickLocResultPortTestcaseMsg: SickLocResultPortTestcaseMsg,
  SickLocColaTelegramMsg: SickLocColaTelegramMsg,
  SickLocResultPortHeaderMsg: SickLocResultPortHeaderMsg,
  SickLocResultPortTelegramMsg: SickLocResultPortTelegramMsg,
  SickLocDiagnosticMsg: SickLocDiagnosticMsg,
  SickLocResultPortCrcMsg: SickLocResultPortCrcMsg,
};

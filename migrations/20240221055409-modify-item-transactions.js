"use strict";

var dbm;
var type;
var seed;
var fs = require("fs");
var path = require("path");
var Promise;

/**
 * We receive the dbmigrate dependency from dbmigrate initially.
 * This enables us to not have to rely on NODE_PATH.
 */
exports.setup = function (options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
  Promise = options.Promise;
};

exports.up = function (db) {
  var dropForeignKeySql = path.join(
    __dirname,
    "sqls",
    "20240221055409-drop-foreign-key-item-transactions-up.sql"
  );
  var addForeignKeySql = path.join(
    __dirname,
    "sqls",
    "20240221055409-add-foreign-key-item-transactions-up.sql"
  );

  return new Promise(function (resolve, reject) {
    fs.readFile(dropForeignKeySql, { encoding: "utf-8" }, function (err, data) {
      if (err) return reject(err);
      db.runSql(data, function (err) {
        if (err) return reject(err);

        fs.readFile(
          addForeignKeySql,
          { encoding: "utf-8" },
          function (err, data) {
            if (err) return reject(err);
            db.runSql(data, resolve);
          }
        );
      });
    });
  });
};

exports.down = function (db) {
  return null;
};

exports._meta = {
  version: 1,
};

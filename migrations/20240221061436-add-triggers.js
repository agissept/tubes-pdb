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
  var reduceproductstock = path.join(
    __dirname,
    "sqls",
    "20240221061436-add-reduceproductstock-trigger-up.sql"
  );
  var invoiceretotalsinsert = path.join(
    __dirname,
    "sqls",
    "20240221061436-add-invoiceretotalsinsert-trigger-up.sql"
  );
  var invoiceretotalsupdate = path.join(
    __dirname,
    "sqls",
    "20240221061436-add-invoiceretotalsupdate-trigger-up.sql"
  );

  return new Promise(function (resolve, reject) {
    fs.readFile(
      reduceproductstock,
      { encoding: "utf-8" },
      function (err, data) {
        if (err) return reject(err);
        db.runSql(data, function (err) {
          if (err) return reject(err);

          fs.readFile(
            invoiceretotalsinsert,
            { encoding: "utf-8" },
            function (err, data) {
              if (err) return reject(err);
              db.runSql(data, function (err) {
                if (err) return reject(err);

                fs.readFile(
                  invoiceretotalsupdate,
                  { encoding: "utf-8" },
                  function (err, data) {
                    if (err) return reject(err);
                    db.runSql(data, resolve);
                  }
                );
              });
            }
          );
        });
      }
    );
  });
};

exports.down = function (db) {
  return new Promise(function (resolve, reject) {
    db.runSql("DROP TRIGGER IF EXISTS `ReduceProductStock`;", function (err) {
      if (err) return reject(err);

      db.runSql(
        "DROP TRIGGER IF EXISTS `InvoiceReTotalsInsert`;",
        function (err) {
          if (err) return reject(err);

          db.runSql("DROP TRIGGER IF EXISTS `InvoiceReTotalsUpdate`;", resolve);
        }
      );
    });
  });
};

exports._meta = {
  version: 1,
};

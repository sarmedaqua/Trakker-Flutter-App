// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PaymentModel paymentModelFromJson(String str) => PaymentModel.fromJson(json.decode(str));

String paymentModelToJson(PaymentModel data) => json.encode(data.toJson());

class PaymentModel {
  String dueDate;
  int invoiceCount;
  List<Invoice> invoices;
  String regNo;
  String salesOrderId;
  double totalAmount;

  PaymentModel({
    required this.dueDate,
    required this.invoiceCount,
    required this.invoices,
    required this.regNo,
    required this.salesOrderId,
    required this.totalAmount,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
    dueDate: json["DueDate"]??"",
    invoiceCount: json["InvoiceCount"]??0,
    invoices: List<Invoice>.from(json["Invoices"].map((x) => Invoice.fromJson(x))),
    regNo: json["RegNo"]??"",
    salesOrderId: json["SalesOrderID"]??0,
    totalAmount: json["TotalAmount"]?.toDouble()??0.0,
  );

  Map<String, dynamic> toJson() => {
    "DueDate": dueDate,
    "InvoiceCount": invoiceCount,
    "Invoices": List<dynamic>.from(invoices.map((x) => x.toJson()))??[],
    "RegNo": regNo,
    "SalesOrderID": salesOrderId,
    "TotalAmount": totalAmount,
  };
}

class Invoice {
  String dueAmount;
  String dueDate;
  String invoiceNo;
  String invoiceType;
  String url;

  Invoice({
    required this.dueAmount,
    required this.dueDate,
    required this.invoiceNo,
    required this.invoiceType,
    required this.url,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
    dueAmount: json["DueAmount"]??"0",
    dueDate: json["DueDate"]??"",
    invoiceNo: json["InvoiceNo"]??"",
    invoiceType: json["InvoiceType"]??"",
    url: json["URL"]??"",
  );

  Map<String, dynamic> toJson() => {
    "DueAmount": dueAmount,
    "DueDate": dueDate,
    "InvoiceNo": invoiceNo,
    "InvoiceType": invoiceType,
    "URL": url,
  };
}

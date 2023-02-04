import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import '../models/GURUelement.dart';


const Color lightPrimary = Colors.white;
const Color darkPrimary =  Color(0xFFE0E0E0);
const Color black = Colors.black;
const Color darkShadow = Color.fromRGBO(222, 160, 0, 1);
const Color lightShadow = Color.fromRGBO(255, 208, 0, 1);

const double appPadding = 30;

const credentials = r'''
  {
  "type": "service_account",
  "project_id": "cafemvp",
  "private_key_id": "b6f50457fd0632f3842f7dabd3971b729d7b3a84",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDKh65AUEIBq7iJ\npkY4SLJwAuqqZWFwDLjBxIvPCfWRb3T6VuSNrO8HjTOOCTH7bYbn8oZtsXTxkLMX\nM3370Bn3ruBsVb1VlkunqYlgOvfcQa+JHSUKaRRnGG3qrtAY2jNy7LQRNd9rvqwM\npKCpbFV21aXo8HkqCGxNaqlyyQgC82tWvS3Y0TMbnULpF1GWfMwMMUc1n5mNqcZe\n6Dn8JBy8uDd46c+jcAtjUI6dL7nXfBJHsGqwY1hVWLIP6FsDtVacrpfG/nxcdXys\nDVJcACQKvv2tdPTEY7WOzkCOeT8E+hCm5LhNJjQMFQ7gzTdCeyATkr/eCKRjhh6L\n3eyiTjANAgMBAAECggEAMG1B+qnWJp0fanaCKtojJIpl/ylvo4G/OcHb5j0M5WIf\nt+5IByJXI1idf7RuKZ72V4bTou4ANvSxBfavhKMtWl6L1guoUos1+ticexCOjLF+\nHgyEe1lF4iLiwW9cXdzq2WuE4OqfSh2U+Q7yRaCcTOZoHetGJYlPEDHVY5dzHXUW\ntaM/qrJcfvERHD6Db2gNQC/n5zs9rawdrZhLjexPEpCXpwjqJJoGovbYmRlgvPu5\n87T7cJpr/UPUvXltI7x+3gkBiMDXVeWOi6e1jqsppGyuf10ATSVp9yBnLZu15Jyg\n8N1ZJlgNS7AgW4RS6ItwlsQgnzNDYF5Y/Q+qGoZKMQKBgQD2ZZ6JHGN1jeMDrRDY\ncq+Gbm1FYFHJkbWEQqTKmUAvbdmCd1O6PjiWi9utbVQokkjRfZTJW41V5T0dfbmp\nyRrCagT2mSZ8Z0YwZzJZQaWOPN0ZqRdWpV5lBMqAtufuw0jApGhkQTlDzul5rqgK\ntsU4k9cAddysz8EXiIZhHaAaGQKBgQDSbGMMHSXl2cOwSSAFO/SZbSmHRmxWqcLA\nzdtvWZ0NLKJfgeZPEiSkIKkOosKmHixNkM8ZjL3SaffaPavcMwFTPmcERYiadKSx\nQ/X7W/+JhI8n97q/uyDOlyB0p0mBt9IsIpDQXzBjpuJxoQ71Ktq3XD0sxAqhoQ4/\n5eKIWqXsFQKBgQCtVOlEvQK+lJTJZjr+eRc/M3mNH2gJq4YMx7ETkOFVPCqSHA17\na//07+gWxV05uUaekIBVciEn9r6ae3JbnUxEzb42F6C6TRBURpRls8eaGvjS71+q\npWSVHdyy1XitPxVz53REapm1ON6HqjUubEqrNV0/Rqp5qyDDxFf8A5I4KQKBgEpG\nQev7ue3ZIQ7vsOLIF/20H42FWSZ6A6mEwGkci6gj0ii+NGpCsDZS5Pmqj+SND/xN\nGh0dpb9I8ljRngE668PTag+C78X9WEjOAVy5S4jiBpoIAp480ka555Xlmre0B/bW\nOKGkh/MU7CdJv3rgppVEdL+Bb3M/40TAw2Z4AMtFAoGAB5KFlgacqVdb2+UztCMf\nUQASJUG0aBdhT9x5hOYFlAIKTjwCXxW6wjKGvi7463E6UmstoJhhDlvpF8baPZRf\nZmkCkbFSGoPrY+DeMufZQ0fL4deYVJlVVdWnodlRkabZRWFgebqzERPYMfcyrB//\nRIufnlw3zgIKqoouPL7c2vc=\n-----END PRIVATE KEY-----\n",
  "client_email": "cafe-mvp@cafemvp.iam.gserviceaccount.com",
  "client_id": "112702021220062024160",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/cafe-mvp%40cafemvp.iam.gserviceaccount.com"
  }
  ''';

// set up & connect to the spreadsheet
final spreadsheetId = '1sIY74Su1fnMYRLhpNL4kzISNus5wbeWirdalGCApiLo';


int numberOfNotes = 0;

List<String> ListofSkill = ["Singing","Dancing","Cooking","Speech"];

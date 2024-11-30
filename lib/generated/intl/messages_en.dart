// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(MB, files) =>
      "Files size must be less than ${MB} MB, ${files}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("Please enter the address"),
        "access_denied": MessageLookupByLibrary.simpleMessage("Access denied"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add new item"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter the password identical"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "error_Timeout_Error": MessageLookupByLibrary.simpleMessage("TIME OUT"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "error_cancel_token": MessageLookupByLibrary.simpleMessage(
            "The connection is interrupted"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("Conflict error"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "An error occurred during the connection"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("YOU DO NOT HAVE PRIVILEGE"),
        "error_general": MessageLookupByLibrary.simpleMessage(
            "AN UNEXPECTED ERROR OCCURRED"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER ERROR"),
        "error_socket":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "failureActions":
            MessageLookupByLibrary.simpleMessage("Failure Actions"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("Please enter this field"),
        "internet_connected":
            MessageLookupByLibrary.simpleMessage("Internet connected"),
        "label_Login": MessageLookupByLibrary.simpleMessage("Login"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("Language"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("Change language"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "label_email": MessageLookupByLibrary.simpleMessage("Email"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage("Forget password?"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("Full name"),
        "label_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "label_password": MessageLookupByLibrary.simpleMessage("Password"),
        "label_phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "label_register": MessageLookupByLibrary.simpleMessage("Register"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading…"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "Should be more than 8 and less than 30"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "Should have Upper and Lower case, numbers and special characters"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid mobile phone"),
        "pick": MessageLookupByLibrary.simpleMessage("Pick"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "size_more_than_mg_error": m0,
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("TRY AGAIN")
      };
}

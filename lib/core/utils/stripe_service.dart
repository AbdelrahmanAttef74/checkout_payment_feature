import 'package:checkout_payment_app/Features/payment_details/repository/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/Features/payment_details/repository/models/payment_intent_model.dart';
import 'package:checkout_payment_app/core/utils/api_keys.dart';
import 'package:checkout_payment_app/core/utils/api_service.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var responce = await apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      body: paymentIntentInputModel.tojson(),
      token: ApiKeys.sekretKey,
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(responce.data);
    return paymentIntentModel;
  }
}

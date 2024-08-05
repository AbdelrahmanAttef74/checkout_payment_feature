import 'package:checkout_payment_app/Features/checkout/repository/checkout_repo.dart';
import 'package:checkout_payment_app/Features/payment_details/repository/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/core/utils/stripe_service.dart';
import 'package:dartz/dartz.dart';

class ChecoutRepoImpl extends CheckoutRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:ui_1/pages/home.dart';
import 'package:ui_1/pages/patient/patient.dart';
import 'package:ui_1/pages/ui_2/ui_2.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.route:
        return _pageRouter(page: const Home());
      case Patient.route:
        return _pageRouter(page: const Patient());
      case UI2.route:
        return _pageRouter(page: const UI2());

      // case Booking.route:
      //   return _pageRouter(page: const Booking());

      // case NewBooking.route:
      //   return _pageRouter(page: const NewBooking());

      // case Cashier.route:
      //   return _pageRouter(page: const Cashier());

      // case CreateCashier.route:
      //   return _pageRouter(page: const CreateCashier());

      // case UpdateCashier.route:
      //   var cash = settings.arguments as CashierModel;
      //   return _pageRouter(page: UpdateCashier(cashier: cash));

      // case Doctor.route:
      //   return _pageRouter(page: const Doctor());

      // case CreateDoctor.route:
      //   return _pageRouter(page: const CreateDoctor());

      // case UpdateDoctor.route:
      //   var doc = settings.arguments as DoctorModel;
      //   return _pageRouter(
      //     page: UpdateDoctor(doctor: doc),
      //   );

      // case Patient.route:
      //   return _pageRouter(page: const Patient());

      // case PatientDetail.route:
      //   var patient = settings.arguments as PatientModel;
      //   return _pageRouter(page: PatientDetail(patient: patient));

      // case Profile.route:
      //   return _pageRouter(page: const Profile());

      // case Procedure.route:
      //   return _pageRouter(page: const Procedure());

      // case CreateProcedure.route:
      //   return _pageRouter(page: const CreateProcedure());

      // case UpdateProcedure.route:
      //   var proce = settings.arguments as ProcedureModel;
      //   return _pageRouter(page: UpdateProcedure(procedure: proce));

      default:
        return _pageRouter(page: const Home());
    }
  }

  static _pageRouter({required Widget page, RouteSettings? settings}) {
    return CupertinoPageRoute(
      builder: (_) => page,
      settings: settings,
    );
  }
}

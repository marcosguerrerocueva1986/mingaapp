import 'package:bancamovilr/index.dart';
import 'package:quickalert/quickalert.dart';

class NotificationService {
  static showWarning({String? title = '', String? text}) {
    QuickAlert.show(
        title: title,
        text: text,
        backgroundColor: appRouter
            .navigatorKey.currentContext!.theme.scaffoldBackgroundColor,
        context: appRouter.navigatorKey.currentContext!,
        textColor: appRouter.navigatorKey.currentContext!.theme.textTheme
                .bodyMedium!.color ??
            Colors.black,
        type: QuickAlertType.warning);
  }

  static showSuccess({String? title = 'Realizado', String? text}) {
    QuickAlert.show(
        title: title,
        text: text,
        backgroundColor: appRouter
            .navigatorKey.currentContext!.theme.scaffoldBackgroundColor,
        context: appRouter.navigatorKey.currentContext!,
        textColor: appRouter.navigatorKey.currentContext!.theme.textTheme
                .bodyMedium!.color ??
            Colors.black,
        type: QuickAlertType.success);
  }

  static showConfirm(
      {String? text,
      Function()? onConfirmBtnTap,
      String confirmBtnText = 'Sí',
      String cancelBtnText = 'Cancelar'}) {
    QuickAlert.show(
        title: 'Confirmar',
        text: text,
        onConfirmBtnTap: onConfirmBtnTap,
        backgroundColor: appRouter
            .navigatorKey.currentContext!.theme.scaffoldBackgroundColor,
        context: appRouter.navigatorKey.currentContext!,
        confirmBtnText: confirmBtnText,
        cancelBtnText: cancelBtnText,
        confirmBtnColor:
            appRouter.navigatorKey.currentContext?.theme.primaryColor ??
                Colors.blue,
        textColor: appRouter.navigatorKey.currentContext!.theme.textTheme
                .bodyMedium!.color ??
            Colors.black,
        type: QuickAlertType.confirm);
  }

  static showError({String? title = 'Error', String? text}) {
    QuickAlert.show(
        title: title,
        confirmBtnColor: appRouter.navigatorKey.currentContext!.theme
                    .filledButtonTheme.style !=
                null
            ? getColorForState(
                appRouter.navigatorKey.currentContext!,
                appRouter.navigatorKey.currentContext!.theme.filledButtonTheme
                    .style!.backgroundColor,
                {MaterialState.pressed})
            : appRouter.navigatorKey.currentContext!.theme.primaryColor,
        textColor: appRouter.navigatorKey.currentContext!.theme.textTheme
                .bodyMedium!.color ??
            Colors.black,
        backgroundColor: appRouter
            .navigatorKey.currentContext!.theme.scaffoldBackgroundColor,
        text: text,
        context: appRouter.navigatorKey.currentContext!,
        type: QuickAlertType.error);
  }
}

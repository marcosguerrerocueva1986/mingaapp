import 'package:awesome_select/awesome_select.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveSmartSelect<T> extends ReactiveFormField<T, T> {
  final bool showArrow;
  ValueChanged<String?>? onChange;

  ReactiveSmartSelect(
      {required String formControlName,
      required String title,
      required String placeholder,
      required String label,
      bool showLabel = false,
      required List<S2Choice<T>> choiceItems,
      this.onChange,
      bool enabled = true,
      S2ModalType modalType = S2ModalType.fullPage,
      bool modalFilter = true,
      this.showArrow = true,
      String modalFilterHint = 'Filtrar'})
      : super(
            formControlName: formControlName,
            validationMessages: {
              'required': (error) => 'Debe seleccionar un $label'
            },
            builder: (ReactiveFormFieldState<T, T> field) {
              return Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding, horizontal: defaultPadding),
                  child: SmartSelect<T>.single(
                    title: title,
                    placeholder: placeholder,
                    modalType: modalType,
                    modalHeaderStyle: S2ModalHeaderStyle(
                        iconTheme: const IconThemeData(color: Colors.white),
                        backgroundColor: appRouter
                            .navigatorKey.currentContext!.theme.primaryColor),
                    selectedValue: field.value!,
                    modalFilter: modalFilter,
                    modalFilterHint: modalFilterHint,
                    choiceEmptyBuilder: (context, value) => const EmptyResult(),
                    tileBuilder: (context, value) => SmartSelectFormField(
                      onTap: enabled ? value.showModal : () {},
                      text: value.selected.toString(),
                      label: label,
                      showArrow: showArrow,
                      showLabel: showLabel,
                    ),
                    choiceItems: choiceItems,
                    onChange: (state) {
                      field.didChange(state.value);
                      if (onChange != null) onChange(state.value?.toString());
                    },
                  ),
                ),
              );
            });

  @override
  ReactiveFormFieldState<T, T> createState() => ReactiveFormFieldState<T, T>();
}

class SmartSelectFormField extends StatelessWidget {
  const SmartSelectFormField(
      {Key? key,
      required this.label,
      required this.text,
      required this.onTap,
      required this.showLabel,
      this.showArrow = true})
      : super(key: key);

  final String label;
  final String text;
  final GestureTapCallback onTap;
  final bool showArrow;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: WrapperFormField(
                title: label,
                showLabel: showLabel,
                //separation: defaultPadding / 4,
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            if (showArrow)
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 14,
              )
          ],
        ),
      ),
    );
  }
}

class WrapperFormField extends StatelessWidget {
  const WrapperFormField(
      {Key? key,
      required this.child,
      required this.title,
      required this.showLabel,
      this.vertical = false})
      : super(key: key);

  final Widget child;
  final String title;
  final bool vertical;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: UniqueKey(),
      width: double.infinity,
      // height: 100,
      // color: Colors.red,
      child: vertical
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // shrinkWrap: true,
              children: [
                if (title.isNotEmpty && showLabel) ...[
                  Text(
                    '$title: ',
                  ),
                  const SizedBox(
                    width: 8,
                  )
                ],
                Container(
                  child: child,
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // shrinkWrap: true,
              children: [
                if (title.isNotEmpty && showLabel) ...[
                  Text(
                    '$title: ',
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
                Container(
                  child: child,
                ),
              ],
            ),
    );
  }
}

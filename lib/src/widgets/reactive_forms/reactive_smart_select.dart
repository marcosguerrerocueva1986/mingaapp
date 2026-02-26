import 'package:dropdown_search/dropdown_search.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveSmartSelect<T> extends ReactiveFormField<T, T> {
  final bool showArrow;
  ValueChanged<String?>? onChange;

  ReactiveSmartSelect(
      Key? key,
      {required String formControlName,
      required String title,
      required String placeholder,
      required String label,
      bool showLabel = false,
      required List<DropdownMenuItem<T>> choiceItems,
      this.onChange,
      bool enabled = true,
      bool modalFilter = true,
      this.showArrow = true,
      String modalFilterHint = 'Filtrar'})
      : super(
            key: key,
            formControlName: formControlName,
            validationMessages: {
              'required': (error) => 'Debe seleccionar un $label'
            },
            builder: (ReactiveFormFieldState<T, T> field) {
              return Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding, horizontal: defaultPadding),
                  child: DropdownSearch<T>(
                    enabled: enabled,
                    items: (filter, loadProps) => choiceItems.map((e) => e.value as T).toList(),
                    itemAsString: (T? item){
                      final found = choiceItems.firstWhere(
                        (element) => element.value == item,
                        orElse: () => DropdownMenuItem(child: Text(item.toString()))
                      );
                      return (found.child as Text).data ?? choiceItems.toString();
                    },
                    selectedItem: field.value,
                    compareFn: (item1, item2) => item1 == item2,
                    onChanged: (T? value) {
                      field.didChange(value);
                      if (onChange != null) onChange(value?.toString());
                    },
                    decoratorProps: DropDownDecoratorProps(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        hintText: placeholder,
                      ),
                    ),
                    popupProps: PopupProps.menu( 
                      showSearchBox: modalFilter,
                      searchFieldProps: TextFieldProps(
                        decoration: InputDecoration(
                          hintText: modalFilterHint,
                        ),
                      ),
                      emptyBuilder: (context, searchEntry) => const Center(child: Text('Sin resultados')),
                    ),
                    dropdownBuilder: (context, selectedItem) {
                      String displayText = placeholder;
                      if (selectedItem != null) {
                        try {
                          final found = choiceItems.firstWhere((e) => e.value == selectedItem);
                          if (found.child is Text) {
                            displayText = (found.child as Text).data!;
                          } else {
                            displayText = selectedItem.toString();
                          }
                        } catch (_) {
                          displayText = selectedItem.toString();
                        }
                      }
                      return SmartSelectFormField(
                        label: label,
                        text: displayText,
                        onTap: () {}, 
                        showArrow: showArrow,
                        showLabel: showLabel,
                      );
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

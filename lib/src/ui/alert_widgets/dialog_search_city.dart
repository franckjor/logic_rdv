import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_provider_function/searchByCity.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../common.dart';

class DialogSearchCityValue extends StatefulWidget {
  final String indexPage;

  DialogSearchCityValue({required this.indexPage});

  @override
  _DialogSearchCityState createState() => _DialogSearchCityState();
}

class _DialogSearchCityState extends State<DialogSearchCityValue> {
  TextEditingController _searchValueCity = TextEditingController();
  List<ClientInfosResponseSearchCity> clientInfoSearchCity = [];
  late String _cityId;
  late CityValue _cityValue;
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchBloc, SearchState>(listener: (context, state) {
          if (state is SearchCityStateLoadingSuccess) {
            setState(() {
              clientInfoSearchCity.clear();
              clientInfoSearchCity.addAll(state.city.data.list);
              _loading = true;
            });
          } else if (state is SearchStateLoadingFailure) {
            if (state.error == messageErrorTokenInvalid ||
                state.error == messageErrorTokenExpired) {
              customAlert(
                alertType: AlertType.info,
                context: context,
                action: () {
                  widget.indexPage == '0'
                      ? Navigator.pop(context)
                      : Navigator.pushNamedAndRemoveUntil(context,
                          RouteGenerator.loginScreen, (route) => false);
                },
                content: Container(
                  child: Text(
                    "Votre session a expiré. Veuillez vous reconnecter.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              );
            } else {
              customAlert(
                alertType: AlertType.info,
                context: context,
                content: Container(
                  child: Text(
                    state.error,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
          }
        }),
      ],
      child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          title: Container(
            width: double.infinity,
            height: 90,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 0, left: 4, bottom: 5),
                    child: const Text(
                      'Où ? Autour de ?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: AdaptativeTextFormField(
                          hintText: 'Code postal, ville',
                          controller: _searchValueCity,
                          autoFocus: true,
                          validator: (value) => verifyEmpty(value, errorMessage: ''),
                          suffixIcon: _searchValueCity.text != ''
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      _searchValueCity.clear();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  ),
                                )
                              : const Icon(Icons.clear,
                                  color: Colors.transparent),
                          onTapeChangeHandler: (value) {
                            setState(() {
                              _loading = false;
                              EasyDebounce.debounce(
                                'my-debouncer',
                                Duration(microseconds: 3),
                                () => onSearchByCity(
                                  context: context,
                                  terms: _searchValueCity.text,
                                ),
                              );
                            });
                          },
                        ),
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.clear,
                            color: AppColors.whiteColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            FocusScope.of(context).unfocus();
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
          content: _loading
              ? Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: 300,
                  width: 300,
                  color: Colors.white,
                  child: Scrollbar(
                    hoverThickness: 5.0,
                    thickness: 5.0,
                    isAlwaysShown: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: clientInfoSearchCity.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              FocusScope.of(context).unfocus();
                              _searchValueCity.text =
                                  clientInfoSearchCity[index].clientinfos;
                              _cityId = clientInfoSearchCity[index].id;
                              _cityValue = CityValue(
                                  cityId: _cityId,
                                  cityName:
                                      clientInfoSearchCity[index].clientinfos);
                              Navigator.pop(context, _cityValue);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                                '${clientInfoSearchCity[index].clientinfos}'),
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Center(
                  child: AdaptativeIndicator(),
                ),
        );
      }),
    );
  }
}

class CityValue {
  String cityName;
  String cityId;

  CityValue({required this.cityName,required this.cityId});
}

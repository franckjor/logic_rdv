import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_provider_function/searchByCity.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_response.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';

import '../../core/helper/validator_form.dart';
import 'custom_snackbar.dart';

class AddressInformation {
  String cityName;
  String cityId;

  AddressInformation({this.cityName, this.cityId});
}

class DialogOfAddress extends StatefulWidget {
  @override
  _DialogOfAddressState createState() => _DialogOfAddressState();
}

class _DialogOfAddressState extends State<DialogOfAddress> {
  String _cityId;
  TextEditingController _searchValueCity = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  List<ClientInfosResponseSearchCity> clientInfoSearchCity = [];
  AddressInformation addressInformation;
  SearchDialogResponse searchDialogResponse;
  bool _showList = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchBloc, SearchState>(listener: (context, state) {
          if (state is ListOfAddressDialogLoadingSuccess) {
            setState(() {
              searchDialogResponse = state.address;
              addressInformation = AddressInformation(
                  cityId: searchDialogResponse.localisation,
                  cityName: 'Mon adresse');
              Navigator.pop(context, addressInformation);
            });
          } else if (state is SearchCityStateLoadingSuccess) {
            setState(() {
              clientInfoSearchCity.clear();
              clientInfoSearchCity.addAll(state.city.data.list);
              _showList = true;
            });
          } else if (state is SearchStateLoadingFailure) {
            flushBarError(state.error, context);
          }
        }),
      ],
      child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          title: Container(
            width: double.infinity,
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.colorBrown,
            ),
            child: Text(
              'Adresse de recherche'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adresse',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 4),
                        AdaptativeTextFormField(
                          hintText: 'Entrez une adresse',
                          controller: _addressController,
                          validator: (value) => verifyEmpty(value),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Code postal',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Stack(
                          children: [
                            Visibility(
                              visible: _showList,
                              child: Container(
                                padding: EdgeInsets.only(top: 40),
                                height: 150,
                                width: 170,
                                color: Colors.white,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: clientInfoSearchCity.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      onTap: () {
                                        setState(() {
                                          FocusScope.of(context).unfocus();

                                          _cityId =
                                              clientInfoSearchCity[index].id;
                                          List<String> value =
                                              clientInfoSearchCity[index]
                                                  .clientinfos
                                                  .split(' ');
                                          _cityController.text = value[1];
                                          _searchValueCity.text = value[0];
                                          _showList = false;
                                        });
                                      },
                                      title: Text(
                                          '${clientInfoSearchCity[index].clientinfos}'),
                                    );
                                  },
                                ),
                              ),
                            ),
                            AdaptativeTextFormField(
                              hintText: 'Code postal, ville',
                              controller: _searchValueCity,
                              onTapeChangeHandler: (value) {
                                setState(() {
                                  EasyDebounce.debounce(
                                      'my-debouncer',
                                      Duration(seconds: 3),
                                      () => onSearchByCity(
                                          context: context,
                                          terms: _searchValueCity.text));
                                });
                              },
                              validator: (value) => verifyEmpty(value),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ville',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        AdaptativeTextFormField(
                          hintText: 'Entrez une ville',
                          controller: _cityController,
                          validator: (value) => verifyEmpty(value),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              'Annuler',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.cyan,
                              onPrimary: AppColors.whiteColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              final _form = _formKey.currentState;
                              if (_form.validate()) {
                                onSearchAddress(
                                    address: _addressController.text,
                                    city: _cityController.text,
                                    codePostal: _searchValueCity.text,
                                    context: context);
                              }
                            },
                            child: Text(
                              'Valider',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: AppColors.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

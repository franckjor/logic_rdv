import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_provider_function/searchByCity.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DialogSearchObjectFName extends StatefulWidget {
  final String cityId;
  final String indexPage;

  DialogSearchObjectFName({
    this.cityId,
    this.indexPage,
  });

  @override
  _DialogSearchObjectFNameState createState() =>
      _DialogSearchObjectFNameState();
}

class _DialogSearchObjectFNameState extends State<DialogSearchObjectFName> {
  TextEditingController _searchValueName = TextEditingController();
  List<ObjectNameOfSearch> objectNameOfSearch = [];
  String _categoryId;
  ObjectName _objectName;
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchBloc, SearchState>(listener: (context, state) {
          if (state is SearchNameStateLoadingSuccess) {
            setState(() {
              objectNameOfSearch.clear();
              objectNameOfSearch.addAll(state.name.data.list);
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
            decoration: BoxDecoration(
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
                      'Nom, Spécialité, Téléphone',
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
                          hintText: 'Nom, Spécialité, Téléphone',
                          autoFocus: true,
                          controller: _searchValueName,
                          validator: (value) => verifyEmpty(value),
                          suffixIcon: _searchValueName.text != ''
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      _searchValueName.clear();
                                    });
                                  },
                                  child: Icon(Icons.clear, color: Colors.red),
                                )
                              : Icon(Icons.clear, color: Colors.transparent),
                          onTapeChangeHandler: (value) {
                            setState(() {
                              _loading = false;
                              EasyDebounce.debounce(
                                  'my-debouncer',
                                  Duration(microseconds: 3),
                                  () => onSearchByName(
                                        context: context,
                                        terms: _searchValueName.text,
                                        codePostal: (widget.cityId != null)
                                            ? widget.cityId
                                            : '0',
                                      ));
                            });
                          },
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Colors.white,
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
                  padding: EdgeInsets.only(top: 10),
                  height: 300,
                  width: 300,
                  color: Colors.white,
                  child: Scrollbar(
                    hoverThickness: 4,
                    thickness: 4,
                    isAlwaysShown: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: objectNameOfSearch.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              this._searchValueName.text =
                                  objectNameOfSearch[index].fullName;
                              _categoryId = objectNameOfSearch[index].id;

                              if (objectNameOfSearch[index].tel != null) {
                                Navigator.popAndPushNamed(
                                    context, RouteGenerator.doctorProfileScreen,
                                    arguments: GetDoctorIdPageArguments(
                                        id: objectNameOfSearch[index].id,
                                        tokenAppointment:
                                            objectNameOfSearch[index]
                                                .appointment
                                                .token,
                                        tokenDoctor: objectNameOfSearch[index]
                                            .appointment
                                            .token));
                              } else {
                                _objectName = ObjectName(
                                    catId: _categoryId,
                                    fullName:
                                        objectNameOfSearch[index].fullName);
                                Navigator.pop(context, _objectName);
                              }
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              objectNameOfSearch[index]?.address != null
                                  ? Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          14, 8, 14, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            '${objectNameOfSearch[index]?.civility ?? ''} ${objectNameOfSearch[index].fullName}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            '${objectNameOfSearch[index]?.address ?? ''}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            '${objectNameOfSearch[index]?.zip ?? ''} ${objectNameOfSearch[index]?.city}',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade800,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          (objectNameOfSearch[index]?.tel !=
                                                      '' ||
                                                  objectNameOfSearch[index]
                                                          ?.tel !=
                                                      null)
                                              ? SizedBox.shrink()
                                              : Text(
                                                  '${objectNameOfSearch[index]?.tel ?? ''}',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey.shade800,
                                                  ),
                                                ),
                                          const SizedBox(height: 4),
                                          (objectNameOfSearch[index]?.kmDiff !=
                                                      '' ||
                                                  objectNameOfSearch[index]
                                                          ?.kmDiff !=
                                                      null)
                                              ? SizedBox.shrink()
                                              : Text(
                                                  'à ${objectNameOfSearch[index]?.kmDiff ?? ''}km',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey.shade800,
                                                  ),
                                                ),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 8),
                                      child: Text(
                                        '${objectNameOfSearch[index].fullName}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                              Divider(
                                height: 0.40,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      }),
    );
  }
}

class ObjectName {
  String fullName;
  String catId;

  ObjectName({this.fullName, this.catId});
}
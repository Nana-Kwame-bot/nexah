import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexah/appliance_control/appliance_control.dart';
import 'package:nexah/config/styles.dart';
import 'package:nexah/widgets/rooms.dart';
import 'package:nexah/widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String iD = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const TitleWidget(
          text: 'Home',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Rooms(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xFFDFEFE3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Energy Consumption: 60W',
                    style: detailTextStyle,
                  ),
                  Text(
                    'Air Quality: Good',
                    style: detailTextStyle,
                  ),
                  Text(
                    'Temperature: 82F',
                    style: detailTextStyle,
                  ),
                ],
              ),
            ),
            BlocBuilder<ApplianceControlBloc, ApplianceControlState>(
                buildWhen: buildWhen,
                builder: (context, state) {
                  final applianceControlBloc =
                      context.read<ApplianceControlBloc>();
                  return GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    children: [
                      ControlCard(
                        assetName: 'assets/light.svg',
                        onChanged: (bool value) {
                          applianceControlBloc.add(
                            LightChangeSuccess(value: value),
                          );
                        },
                        value: state.isLightActive,
                      ),
                      ControlCard(
                        assetName: 'assets/fan.svg',
                        onChanged: (bool value) {
                          print("onchanged : $value");
                          applianceControlBloc.add(
                            FanChangeSuccess(value: value),
                          );
                        },
                        value: state.isFanActive,
                      ),
                      ControlCard(
                        assetName: 'assets/ac_unit.svg',
                        onChanged: (bool value) {
                          applianceControlBloc.add(
                            ACUnitChangeSuccess(value: value),
                          );
                        },
                        value: state.isACUnitActive,
                      ),
                      ControlCard(
                        assetName: 'assets/television.svg',
                        onChanged: (bool value) {
                          applianceControlBloc.add(
                            TVChangeSuccess(value: value),
                          );
                        },
                        value: state.isTVActive,
                      ),
                      ControlCard(
                        assetName: 'assets/fridge.svg',
                        onChanged: (bool value) {
                          applianceControlBloc.add(
                            FridgeChangeSuccess(value: value),
                          );
                        },
                        value: state.isFridgeActive,
                      ),
                      ControlCard(
                        assetName: 'assets/music.svg',
                        onChanged: (bool value) {
                          applianceControlBloc.add(
                            MusicSystemsChangeSuccess(value: value),
                          );
                        },
                        value: state.isMusicSystemActive,
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }

  bool buildWhen(
      ApplianceControlState previous, ApplianceControlState current) {
    return (previous.isFanActive != current.isFanActive ||
        previous.isMusicSystemActive != current.isMusicSystemActive ||
        previous.isFridgeActive != current.isFridgeActive ||
        previous.isTVActive != current.isTVActive ||
        previous.isACUnitActive != current.isACUnitActive ||
        previous.isLightActive != current.isLightActive);
  }
}

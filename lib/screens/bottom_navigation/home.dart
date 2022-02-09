import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexah/appliance_control/appliance_control.dart';
import 'package:nexah/widgets/readings.dart';
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Rooms(),
            const Readings(),
            BlocBuilder<ApplianceControlBloc, ApplianceControlState>(
                builder: (context, state) {
              final applianceControlBloc = context.read<ApplianceControlBloc>();
              return GridView.count(
                padding: const EdgeInsets.all(16.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                children: [
                  ControlCard(
                    assetName: 'assets/light.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        LightChangeSuccess(value: value),
                      );
                    },
                    value: state.isLightActive,
                    text: 'Light',
                  ),
                  ControlCard(
                    assetName: 'assets/fan.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        FanChangeSuccess(value: value),
                      );
                    },
                    value: state.isFanActive,
                    text: 'Fan',
                  ),
                  ControlCard(
                    assetName: 'assets/ac_unit.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        ACUnitChangeSuccess(value: value),
                      );
                    },
                    value: state.isACUnitActive,
                    text: 'Ac unit',
                  ),
                  ControlCard(
                    assetName: 'assets/television.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        TVChangeSuccess(value: value),
                      );
                    },
                    value: state.isTVActive,
                    text: 'Television',
                  ),
                  ControlCard(
                    assetName: 'assets/fridge.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        FridgeChangeSuccess(value: value),
                      );
                    },
                    value: state.isFridgeActive,
                    text: 'Fridge',
                  ),
                  ControlCard(
                    assetName: 'assets/music.svg',
                    onChanged: (bool value) {
                      applianceControlBloc.add(
                        MusicSystemsChangeSuccess(value: value),
                      );
                    },
                    value: state.isMusicSystemActive,
                    text: 'Music system',
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

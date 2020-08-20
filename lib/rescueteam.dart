import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RescueTeam extends StatefulWidget {
  @override
  _RescueTeamState createState() => _RescueTeamState();
}

class _RescueTeamState extends State<RescueTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        centerTitle: true,
        title: Text("RESCUE TEAM", style: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(-26.195246, 28.034088), zoom: 12.0),
            markers: {rt1Marker, rt2Marker, rt2Marker},
          ),
        ),
      ),
    );
  }
}

//FIX: Makers - using static data
Marker rt1Marker = Marker(
  markerId: MarkerId("Stallion Team"),
  position: LatLng(-26.195246, 28.034088),
  infoWindow: InfoWindow(title: "Stallion Guard"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  onTap: () {},
);

Marker rt2Marker = Marker(
  markerId: MarkerId("SAPS Team"),
  position: LatLng(-26.252757, 28.056664),
  infoWindow: InfoWindow(title: "SAPS"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  onTap: () {},
);

Marker rt3Marker = Marker(
  markerId: MarkerId("Fedelity Team"),
  position: LatLng(-26.153074, 28.015681),
  infoWindow: InfoWindow(title: "Fedelity"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  onTap: () {},
);

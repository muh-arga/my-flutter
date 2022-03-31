import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter/data/model/tourism_place.dart';

class UpdatePlace extends StatefulWidget {
  const UpdatePlace({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  State<UpdatePlace> createState() => _UpdatePlaceState();
}

class _UpdatePlaceState extends State<UpdatePlace> {
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController openDayController = TextEditingController();
  TextEditingController openHourController = TextEditingController();
  TextEditingController ticketPriceController = TextEditingController();

  File? imageFile;
  String? fileName;

  void iniState() {
    super.initState();
    nameController.text = widget.place.name;
    locationController.text = widget.place.location;
    descriptionController.text = widget.place.description;
    openDayController.text = widget.place.openDay;
    openHourController.text = widget.place.openHour;
    ticketPriceController.text = widget.place.ticketPrice.toString();
  }

  createPlace(String name, String location, String description, String openDay,
      String openHour, String ticketPrice, File image, String id) async {
    final uri = 'https://toursim-place.herokuapp.com/api/place/updatePlace/$id';
    var request = http.MultipartRequest('POST', Uri.parse(uri));

    Map<String, String> headers = {'Content-type': 'multipart/form-data'};
    request.files.add(http.MultipartFile(
      'image',
      imageFile!.readAsBytes().asStream(),
      imageFile!.lengthSync(),
      filename: fileName,
    ));

    request.headers.addAll(headers);
    request.fields.addAll({
      'name': name,
      'location': location,
      'description': description,
      'openDay': openDay,
      'openHour': openHour,
      'ticketPrice': ticketPrice
    });

    var res = await request.send();
    print(res.statusCode);
    return res.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubah Data Tempat Wisata"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'name',
                  hintText: 'masukkan nama wisata'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'lokasi',
                  hintText: 'masukkan lokasi'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'deskripsi',
                  hintText: 'masukkan deskripsi'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: openDayController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'hari buka',
                  hintText: 'masukkan hari buka'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: openHourController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'jam buka',
                  hintText: 'masukkan jam buka'),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.text,
              controller: ticketPriceController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'harga tiket',
                  hintText: 'masukkan harga tiket'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                var image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                setState(() {
                  imageFile = File(image!.path);
                  fileName = image.name;
                });
              },
              child: Text('Pilih Gambar'),
            ),
            Container(
              child: imageFile == null
                  ? Container(
                      child: SizedBox(),
                    )
                  : Container(
                      child: Image.file(
                        imageFile!,
                        fit: BoxFit.cover,
                      ),
                    ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () {
          createPlace(
              nameController.text,
              locationController.text,
              descriptionController.text,
              openDayController.text,
              openHourController.text,
              ticketPriceController.text,
              imageFile!,
              widget.place.id);
        },
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:internshala_clone/screens/filter_screen.dart';
import 'package:internshala_clone/screens/modal.dart'; // Ensure this path is correct

class InternshipsScreen extends StatefulWidget {
  const InternshipsScreen({super.key});

  @override
  State<InternshipsScreen> createState() => _InternshipsScreenState();
}

class _InternshipsScreenState extends State<InternshipsScreen> {
  Future<InternshalaModel>? _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = getData(); // Initialize the future
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.menu_rounded,
                size: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Internships',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.search,
                  size: 26,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<InternshalaModel>(
          future: _futureData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              InternshalaModel data = snapshot.data!;
              return Column(
                children: [
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 45,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.blue,
                          ),
                          Text(
                            'Filters',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65381!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65381!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65381!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65381!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65381!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65381!.duration.toString(),
                    stipend: data.internshipsMeta!.the65381!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65454!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65454!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65454!.companyName.toString(),
                    companyLocation:
                        data.internshipsMeta!.the65454!.locationNames!.isEmpty
                            ? ''
                            : data.internshipsMeta!.the65454!.locationNames
                                .toString(),
                    startTime:
                        data.internshipsMeta!.the65454!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65454!.duration.toString(),
                    stipend: data.internshipsMeta!.the65454!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65501!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65501!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65501!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65501!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65501!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65501!.duration.toString(),
                    stipend: data.internshipsMeta!.the65501!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65515!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65515!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65515!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65515!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65515!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65515!.duration.toString(),
                    stipend: data.internshipsMeta!.the65515!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65517!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65517!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65517!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65517!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65517!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65517!.duration.toString(),
                    stipend: data.internshipsMeta!.the65517!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65522!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65522!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65522!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65522!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65522!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65522!.duration.toString(),
                    stipend: data.internshipsMeta!.the65522!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65524!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65524!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65524!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65524!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65524!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65524!.duration.toString(),
                    stipend: data.internshipsMeta!.the65524!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InternshipWidget(
                    data: data,
                    title: data.internshipsMeta!.the65531!.title.toString(),
                    companyImage:
                        data.internshipsMeta!.the65531!.companyLogo.toString(),
                    companyName:
                        data.internshipsMeta!.the65531!.companyName.toString(),
                    companyLocation: data
                        .internshipsMeta!.the65531!.locationNames
                        .toString(),
                    startTime:
                        data.internshipsMeta!.the65531!.startDate.toString(),
                    jobDuration:
                        data.internshipsMeta!.the65531!.duration.toString(),
                    stipend: data.internshipsMeta!.the65531!.stipend!.salary
                        .toString(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            } else {
              return const Center(child: Text('No data available'));
            }
          },
        ),
      ),
    );
  }

  Future<InternshalaModel> getData() async {
    try {
      final response = await http.get(
          Uri.parse('https://internshala.com/flutter_hiring/search'),
          headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
          });

      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
        var data = jsonDecode(response.body);
        print('Decoded data: $data');

        InternshalaModel internshipModels = InternshalaModel.fromJson(data);

        return internshipModels;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error occurred: $e');
      throw Exception('Failed to llload data');
    }
  }
}

class InternshipWidget extends StatelessWidget {
  const InternshipWidget({
    super.key,
    required this.data,
    required this.title,
    required this.companyImage,
    required this.companyName,
    required this.companyLocation,
    required this.startTime,
    required this.jobDuration,
    required this.stipend,
  });

  final InternshalaModel data;
  final String title;
  final String companyImage;
  final String companyName;
  final String companyLocation;
  final String startTime;
  final String jobDuration;
  final String stipend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.grey,
                spreadRadius: 1,
                offset: Offset(1, 1),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('ID : ${data[index].internshipIds[index]}'),
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // Image.network(
                //   companyImage,
                //   height: 30,
                //   width: 50,
                // ),
              ],
            ),

            Text(
              companyName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  companyLocation,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.play_circle_outline_outlined,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      startTime,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      jobDuration,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.money_sharp,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  stipend,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            // Text('user ID : ${data[index].internshipIds}'),
            // Text('body : ${data[index].internshipsMeta}'),
            // Add more fields as necessary
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class JobProfilesScreen extends StatefulWidget {
  @override
  _JobProfilesScreenState createState() => _JobProfilesScreenState();
}

class _JobProfilesScreenState extends State<JobProfilesScreen> {
  // List of job profiles with a boolean to track selection
  final List<Map<String, dynamic>> _jobProfiles = [
    {'name': 'Software Developer', 'isSelected': false},
    {'name': 'Data Analyst', 'isSelected': false},
    {'name': 'UI/UX Designer', 'isSelected': false},
    {'name': 'Product Manager', 'isSelected': false},
    {'name': 'Marketing Specialist', 'isSelected': false},
  ];

  // Function to clear all selections
  void _clearAllSelections() {
    setState(() {
      for (var profile in _jobProfiles) {
        profile['isSelected'] = false;
      }
    });
  }

  // Function to get selected profiles
  List<String> _getSelectedProfiles() {
    return _jobProfiles
        .where((profile) => profile['isSelected'] == true)
        .map((profile) => profile['name'] as String)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Profiles'),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _jobProfiles.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(_jobProfiles[index]['name']),
                    value: _jobProfiles[index]['isSelected'],
                    onChanged: (bool? value) {
                      setState(() {
                        _jobProfiles[index]['isSelected'] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(

                  onPressed: _clearAllSelections,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                  ),
                  child: const Text(
                    'Clear All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Retrieve selected profiles
                    List<String> selectedProfiles = _getSelectedProfiles();
                    Navigator.pop(context,
                        selectedProfiles); // Pass back the selected profiles
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

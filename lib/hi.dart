import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "USERNAME";
  String email = "EMAIL";
  String pn = "PHONE";
  String profileImagePath = ""; // Store the path of the profile image

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.6),
                  Colors.pink.withOpacity(0.6),
                ],
              ),
            ),
          ),
          leading: const BackButton(),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.withOpacity(0.6),
                Colors.pink.withOpacity(0.6),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle the profile photo editing logic, e.g., image picker
                      _pickImage();
                    },
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: profileImagePath.isNotEmpty
                          ? AssetImage(profileImagePath)
                          : null,
                      child: profileImagePath.isEmpty
                          ? const Icon(Icons.camera_alt)
                          : null,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        // Handle the edit icon logic
                        _pickImage();
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "User",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              buildEditableCard("Name", name),
              const SizedBox(
                height: 25,
              ),
              buildEditableCard("Email", email),
              const SizedBox(
                height: 25,
              ),
              buildEditableCard("Phone", pn),
              const SizedBox(
                height: 25,
              ),
              Card(
                child: ListTile(
                  title: const Text("LOGOUT"),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEditableCard(String title, String content) {
    return Card(
      child: ListTile(
        title: Text(content),
        trailing: IconButton(
          onPressed: () {
            // Handle the editing logic if needed
          },
          icon: const Icon(Icons.edit_note),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        profileImagePath = pickedImage.path;
      });
    }
  }
}

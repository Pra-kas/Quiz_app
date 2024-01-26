import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "USERNAME";
  String email = "EMAIL";
  String pn = "PHONE";
  String profileImagePath = "";


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pnController = TextEditingController();

  bool isNameEditing = false;
  bool isEmailEditing = false;
  bool isPnEditing = false;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        profileImagePath = pickedImage.path;
      });
    }
}
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
                ]
              )
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
                 Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white54,  // Change the border color as needed
                        width: 3,  // Adjust the border width as needed
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: profileImagePath.isNotEmpty
                          ? AssetImage(profileImagePath)
                          : null,
                    ),
                  ),
                  if (profileImagePath.isEmpty)
                    Positioned(
                      top : 55,
                      right: 55,
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt, size: 25,),
                        onPressed: () {
                          _pickImage();
                        },
                      ),
                    ),
                  if (profileImagePath.isNotEmpty)
                    Positioned(
                      top: 90,
                      left: 125,
                      child: Container(
                        width: 31,
                        height: 41,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color : Colors.white,width: 2),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            size: 15,
                            
                          ),
                          onPressed: () {
                            _pickImage();// Handle edit action
                          },
                        ),
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
              buildEditableCard("Name", name, nameController, isNameEditing),
              const SizedBox(
                height: 25,
              ),
              buildEditableCard("Email", email, emailController, isEmailEditing),
              const SizedBox(
                height: 25,
              ),
              buildEditableCard("Phone", pn, pnController, isPnEditing),
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

  // ignore: non_constant_identifier_names
  Positioned edit_button() {
    return Positioned(
        bottom: 0,
        right: 0,
        child: IconButton(
            onPressed: () {
            _pickImage();
          },
        icon: const Icon(Icons.edit),
      ),
    );
  }
  

  Widget buildEditableCard(String title, String content, TextEditingController controller, bool isEditing) {
    return Card(
      child: ListTile(
        title: isEditing
            ? TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: title,
                ),
              )
            : Text(content),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              if (isEditing) {
                switch (title) {
                  case "Name":
                  if(controller.text != '') {
                    name = controller.text;
                    break;
                  }
                  case "Email":
                  if(controller.text != ''){
                    email = controller.text;
                    break;
                  }
                  case "Phone":
                    if(controller.text != ''){
                      pn = controller.text;
                      break;
                    }
                }
              }

              switch (title) {
                case "Name":
                  isNameEditing = !isNameEditing;
                  break;
                case "Email":
                  isEmailEditing = !isEmailEditing;
                  break;
                case "Phone":
                  isPnEditing = !isPnEditing;
                  break;
              }
            });
          },
          icon: isEditing ? const Icon(Icons.save) : const Icon(Icons.edit_note),
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const SettingsUI(),
  );
}

class SettingsUI extends StatefulWidget {
  const SettingsUI({Key? key}) : super(key: key);

  @override
  State<SettingsUI> createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {

  bool backGroundSwitch = true;

  TextStyle HeadTitle = const TextStyle(
    color: Colors.red,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  TextStyle SubText = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  TextStyle style = const TextStyle(
    color: Colors.grey,
    fontSize: 12,
  );

  bool isIOS = true;

  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              setState(() {
                isIOS = true;
              });
            },
            child: const Text("Settings UI"),
          ),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Common',
                  style: HeadTitle,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.language, color: Colors.grey),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Language",
                            style: SubText,
                          ),
                          Text(
                            "English",
                            style: style,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.cloud_queue, color: Colors.grey),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Environment",
                            style: SubText,
                          ),
                          Text(
                            "Production",
                            style: style,
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Account",
                  style: HeadTitle,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Phone Number", style: SubText),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Email", style: SubText),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.exit_to_app,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Sign out", style: SubText),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Security",
                  style: HeadTitle,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phonelink_lock,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Lock app in Background", style: SubText),
                      const Spacer(),
                      Switch.adaptive(
                        value: backGroundSwitch,
                        onChanged: (val) {
                          setState(() {
                            backGroundSwitch = val;
                          });
                        },
                        activeColor: Colors.red,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.fingerprint,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Use Fingerprint", style: SubText),
                      const Spacer(),
                      Switch.adaptive(
                        value: false,
                        onChanged: (val) {},
                        activeColor: Colors.red,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Change Password", style: SubText),
                      const Spacer(),
                      Switch.adaptive(
                        value: backGroundSwitch,
                        onChanged: (val) {
                          setState(() {
                            backGroundSwitch = val;
                          });
                        },
                        activeColor: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Misc",
                  style: HeadTitle,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.note_add,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Terms of service", style: SubText),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.source,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Text("Open source licenses", style: SubText),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
        : CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: GestureDetector(
            onTap: () {
              setState(() {
                isIOS = false;
              });
            },
            child: const Text("S e t t i n g s  U I"),
          ),
          backgroundColor: CupertinoColors.destructiveRed,
        ),
        backgroundColor: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Common",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.language, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Language",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "English",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.cloud_queue, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Environment",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Production",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.phone, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Phone number",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.email, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.exit_to_app, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Sign out",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Security",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(Icons.phonelink_lock, color: Colors.grey),
                    const SizedBox(width: 10),
                    const Text(
                      "Lock app in background",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      value: true,
                      onChanged: (val) {},
                      activeColor: CupertinoColors.destructiveRed,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(Icons.fingerprint, color: Colors.grey),
                    const SizedBox(width: 10),
                    const Text(
                      "Use FingerPrint",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      value: false,
                      onChanged: (val) {},
                      activeColor: CupertinoColors.destructiveRed,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(Icons.lock, color: Colors.grey),
                    const SizedBox(width: 10),
                    const Text(
                      "Change Password",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      value: true,
                      onChanged: (val) {},
                      activeColor: CupertinoColors.destructiveRed,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Misc",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.note_add, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Terms of service",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(Icons.source, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Open source licenses",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

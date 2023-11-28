import 'package:flutter/material.dart';
import 'package:simpel_todo/utilities/colors.dart';
import 'package:simpel_todo/utilities/text_style.dart';

class AddPage extends StatefulWidget {
  final Function(Map<String, String> data) onSave;

  const AddPage({
    super.key,
    required this.onSave,
  });

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                saveData();
              },
              icon: const Icon(
                Icons.check_rounded,
                color: Colors.white,
              ))
        ],
        title: Text(
          "Add Agenda",
          style: text2(Colors.white),
        ),
        backgroundColor: primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: text2(Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _titleController,
                style: const TextStyle(color: Colors.white),
                maxLines: 1,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  fillColor: primary200,
                  filled: true,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'add title',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Description',
                style: text2(Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                constraints: const BoxConstraints(maxHeight: 200),
                child: TextFormField(
                  controller: _descriptionController,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 8,
                  decoration: const InputDecoration(
                    // contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 30.0),
                    fillColor: primary200,
                    filled: true,
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'add description',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveData() {
    String title = _titleController.text;
    String description = _descriptionController.text;

    Map<String, String> savedData = {
      'title': title,
      'description': description
    };

    // Pass the saved data back to the callback function
    widget.onSave(savedData);

    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Success"),
          titleTextStyle: heading1(primary),
          content: const Text("Hore, the data was saved successfully."),
        );
      },
    );
  }

  @override
  dispose() {
    _descriptionController.dispose();

    _titleController.dispose();
    super.dispose();
  }
}

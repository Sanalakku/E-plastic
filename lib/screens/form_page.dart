import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const Formpage());
}

class Formpage extends StatelessWidget {
  const Formpage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FULL THE FORM',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<FormPage> {
  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController phoneno = TextEditingController();
  TextEditingController pickuptime = TextEditingController();

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('DETAILS'),
          content: Container(
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: address,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ADDRESS',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: state,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'STATE',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: city,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CITY',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: pincode,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PIN NO',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phoneno,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PHONE NO',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: pickuptime,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PICK-UP TIME',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('UPLOAD PHOTO'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: address,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full House Address',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: pincode,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pin Code',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('NAME: ${name.text}'),
                Text('ADDRESS: ${address.text}'),
                Text('STATE: ${state.text}'),
                Text('CITY : ${city.text}'),
                Text('PIN NO : ${pincode.text}'),
                Text('PHONE NO : ${phoneno.text}'),
                Text('PICK-UP TIME : ${pickuptime.text}'),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FILL THE FORM'),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }

          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  double loanAmount = 0;
  double interestRate = 0;
  double result = 0;

  void Calculate() {
    setState(() {
      result = loanAmount + (loanAmount * interestRate) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คำนวณ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              Text("จำนวนเงินที่ต้องจ่าย ${result.toStringAsFixed(2)} บาท"),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          loanAmount = double.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'กรอกวงเงินกู้',
                      ),
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(labelText: 'อัตราดอกเบี้ย ( % )'),
                        onChanged: (value) {
                          interestRate = double.parse(value);
                        }),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: Calculate,
                      label: Text('คำนวณ'),
                      icon: Icon(Icons.calculate),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

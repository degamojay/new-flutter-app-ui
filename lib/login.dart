import 'package:flutter/material.dart';
import 'package:newappwithui/to_do.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const doubleSpacing = 10.0;
    const contentPadding = EdgeInsets.all(10);

    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                contentPadding: contentPadding,
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                contentPadding: contentPadding,
                suffixIcon: Icon(Icons.key),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ToDo()));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(buttonShape),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary)),
                child: Text('Log In',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary),
                        ),
              ),
            ),
            const SizedBox(height: doubleSpacing),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ToDo()));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(buttonShape),
                ),
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

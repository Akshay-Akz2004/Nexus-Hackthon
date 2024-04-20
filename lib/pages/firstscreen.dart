import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_3/pages/login.dart';
import 'package:flutter_application_3/pages/registerpage.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: [
                // First image and subheading
                Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Image.network(
                            'https://img.freepik.com/premium-vector/doctor-is-working-room-with-laptop-medical-background-illustration-flat-character_36082-639.jpg?w=740'),
                        const Text("Personalized AI Therapist",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    );
                  },
                ),
                // Second image and subheading
                

                 Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        
                        Image.network(
                        'https://img.freepik.com/free-vector/people-connecting-jigsaw-pieces-head-together_53876-64617.jpg?t=st=1713593805~exp=1713597405~hmac=9e9fb4134e15b23a68de3d0f6b997efb23e326b590572b660cae0870d16b0086&w=900'), 
                          SizedBox(height: 60,),// Replace 'https://example.com/second_image.jpg' with your second image URL
                        const Text("Get support anywhere,anytime!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    );
                  },
                ),
                // Third image and subheading
                Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        const SizedBox(height: 40,),
                        Image.network(
                            'https://img.freepik.com/free-vector/interview-concept-illustration_114360-1501.jpg?t=st=1713592288~exp=1713595888~hmac=b55194e31968ad90032c9a05e27add23a0ee6877185e1e6e0f7c7431ad7bcb7e&w=996'),
                            const SizedBox(height: 70,) ,// Replace 'https://example.com/third_image.jpg' with your third image URL
                        const Text("Connect with best Doctors around you!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    );
                  },
                ),
                Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        
                        Image.network(
                          'https://img.freepik.com/free-vector/medical-video-call-consultation-illustration_88138-415.jpg?size=626&ext=jpg&ga=GA1.1.467936904.1706178032&semt=sph'), 
                          SizedBox(height: 60,),// Replace 'https://example.com/second_image.jpg' with your second image URL
                        const Text("Your complete wellness Ally",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 15,),
            SizedBox(
              width: double.infinity, // Make the button width stretch to fit screen width
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Rounded edges
                    ),
                    backgroundColor: Colors.black, // Green background color
                  ),
                  child: const Text('I am a patient', style: TextStyle(color: Colors.white)), // White text color
                ),
              ),
            ),
            const SizedBox(height: 10), // Adjust spacing between buttons
            SizedBox(
              width: double.infinity, // Make the button width stretch to fit screen width
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Rounded edges
                    ),
                    backgroundColor: Colors.black, // Green background color
                  ),
                  child: const Text('I am a doctor', style: TextStyle(color: Colors.white)), // White text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

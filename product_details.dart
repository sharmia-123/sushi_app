import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  final String imagepath;
  final String productname;
  final String productdsc;
  final String rating;
  final IconData iconnme;

  const ProductDetails({
    super.key,
    required this.imagepath,
    required this.productname,
    required this.productdsc,
    required this.rating,
    required this.iconnme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(imagepath, width: double.infinity, height: 200, fit: BoxFit.cover,),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Icon(iconnme, color: Colors.amber),
              const SizedBox(width: 5.0), 
              Text(rating),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            productname, 
            style: GoogleFonts.dmSerifDisplay(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 10.0),       
          const Text(
            'Description',
            style: TextStyle(height: 2, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),         
          Text(
            productdsc,
            style: const TextStyle(height: 1.6, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

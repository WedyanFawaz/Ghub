import 'package:flutter/material.dart';
import 'package:ghub_app/Models/optionsModel.dart';

class OptionCard extends StatelessWidget {
  final Option option;
  const OptionCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
 double cardWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
         margin: EdgeInsets.all(8),
        width: cardWidth,
      decoration: BoxDecoration( color: Colors.amber,borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            SizedBox(width: 8.0),
        Container(width: cardWidth*.4,),
            Container(
              width: cardWidth * 0.5, 
      
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    option.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                      overflow: TextOverflow.visible,
                    option.company,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  SizedBox(height: 4.0),
                  Expanded(
                    child: Text(
                      option.text,
                       overflow: TextOverflow.visible,
                        
                      style: TextStyle(fontSize: 6.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

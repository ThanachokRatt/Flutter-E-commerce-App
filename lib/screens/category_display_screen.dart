import 'package:ecommerceapp_starter/data/data.dart';
import 'package:ecommerceapp_starter/widgets/top_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
class CategoryDisplayScreen extends StatefulWidget {
  const CategoryDisplayScreen({super.key});

  @override
  State<CategoryDisplayScreen> createState() => _CategoryDisplayScreenState();
}

class _CategoryDisplayScreenState extends State<CategoryDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
          Padding(
            
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: TopContainer(title: "Category",
             searchBarTitle: "Search Category"
             ),
          ),
           Expanded(
             child: ListView.builder(
               padding: const EdgeInsets.symmetric( horizontal: 30.0), 
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 170,
                  margin: const EdgeInsets.only(
                    bottom: 10.0,left: 10.0,right: 10.0
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(categories[index].thumbnailImage
                      ),
                      fit:BoxFit.cover
                    ),
                  borderRadius: BorderRadius.circular(20.0)
                  ),
                  foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center
                  )),
             
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(categories[index].categoryName,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white)
                            ,),
                            const SizedBox(height: 5,),
                            Text("${categories[index].productCount} Products",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Colors.white))
                          ],
                        ),
                      ),
                      
                    ],
                    
                  ),
                 
                );
              },
             ),
           ),
        SizedBox(height: 85,)
        ],
        
      ),
    
    );
    
  }
}

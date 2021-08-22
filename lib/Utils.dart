import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if( await canLaunch(url)){await launch(url);

  }

}
 push(BuildContext context,Widget widget){Navigator.push(context,
 MaterialPageRoute(builder: (context)=>widget),);


}
pop(BuildContext context){
  Navigator.pop(context);
}

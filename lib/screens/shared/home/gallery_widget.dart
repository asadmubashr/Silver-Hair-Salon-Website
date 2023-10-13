import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/models/gallery_model.dart';
import 'package:website_base/widgets/button.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({super.key});

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  List<GalleryModel> gallery = [
    GalleryModel(
        title: 'HAND & FOOT CARE',
        imageUrl: 'gallery/hand_and_foot_care.jpeg',
        redirectUrl: ''),
    GalleryModel(
        title: 'HAIR REMOVAL',
        imageUrl: 'gallery/hair_removal.jpeg',
        redirectUrl: ''),
    GalleryModel(
        title: 'HAIR TREATMENTS',
        imageUrl: 'gallery/hair_treatment.jpeg',
        redirectUrl: ''),
    GalleryModel(
        title: 'THREADING & TINTING',
        imageUrl: 'gallery/threading_tinting.jpeg',
        redirectUrl: ''),
    GalleryModel(
        title: 'OMBRE NAILS',
        imageUrl: 'gallery/ombre_nails.jpg',
        redirectUrl: ''),
    GalleryModel(
        title: 'MASSAGE', imageUrl: 'gallery/massage.jpg', redirectUrl: ''),
    GalleryModel(
        title: 'MAKE UP', imageUrl: 'gallery/makeup.jpg', redirectUrl: ''),
    GalleryModel(
        title: 'HENNA DESIGNING',
        imageUrl: 'gallery/henna_designing.jpg',
        redirectUrl: ''),
    GalleryModel(
        title: 'HALAWA HAIR REMOVAL',
        imageUrl: 'gallery/halawa_hair_removal.jpeg',
        redirectUrl: ''),
  ];

  List galleryHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Container(
      color: Colors.white,
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Text(
            'Welcome To',
            style: TextStyle(
                color: Colors.amber, fontSize: 22, fontFamily: 'Paradise'),
          ),
          Text(
            'SILVER HAIR SALON',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 18,
            children: [
              for (int i = 0; i < gallery.length; i++) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onHover: (value) {
                        if (mounted) {
                          setState(() {
                            galleryHovering[i] = value;
                          });
                        }
                      },
                      onTap: () {
                        //context.go('');
                      },
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          transform: galleryHovering[i]
                              ? Matrix4.translationValues(
                                  0, -10, 0) // Move up by 5 pixels on hover
                              : Matrix4.translationValues(
                                  0, 0, 0), // Return to original position
                          child: Image.asset(gallery[i].imageUrl)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      gallery[i].title,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ],
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Stack(
            children: [
              Container(
                width: screenSize.width - horizontalPadding,
                height: 40,
                color: Colors.white,
              ),
              ButtonView(
                name: 'BOOK NOW',
                textStyle: TextStyle(color: Colors.white, fontSize: 12),
                onTap: () {},
                width: screenSize.width,
                height: 40,
                background: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}

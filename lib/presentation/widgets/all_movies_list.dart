import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/text_theme.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/presentation/widgets/search_text_field.dart';
import '../../core/models/movies.dart';

class AllMoviesList extends StatefulWidget {
  const AllMoviesList({Key? key}) : super(key: key);

  @override
  State<AllMoviesList> createState() => _AllMoviesListState();
}

class _AllMoviesListState extends State<AllMoviesList> {

  final _movies = [
    Movie('Fight club','Drama','assets/images/test_movie_poster_image_2.png','31.03.1999'),
    Movie('Matrix','Action','assets/images/test_movie_poster_image_3.png','31.03.1999'),
    Movie('Rush','Drama','assets/images/test_movie_poster_image_4.png','31.03.1999'),
    Movie('Rush','Drama','assets/images/test_movie_poster_image_2.png','31.03.1999'),
  ];

  final TextEditingController _searchFieldController = TextEditingController();

  var _filteredMovies = <Movie>[];

  void _searchMovies(){
    final text = _searchFieldController.text;
    if(text.isNotEmpty){
      _filteredMovies = _movies.where((Movie movie){
        return movie.title.toLowerCase().contains(text.toLowerCase());
      }).toList();
    } else{
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchFieldController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),

          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          itemCount: _filteredMovies.length,
          itemBuilder: (BuildContext context,int index) {
            final _movie = _filteredMovies[index];
            return Padding(
             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
              child: GestureDetector(
               onTap: (){},


               child: Container(
                 clipBehavior: Clip.hardEdge,
                 decoration: ListContainerDecoration(),
                 height: MediaQuery.of(context).size.height * 0.18,
                 width: MediaQuery.of(context).size.width,

                 child: Row(
                   children: [

                     SizedBox(
                         width: MediaQuery.of(context).size.width * 0.3,

                         child: Image(image: AssetImage(_movie.imagePath),fit: BoxFit.cover)
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.all(16),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,

                         children: [

                           Text(_movie.title,style: AppTextStyle.headerStyle,maxLines: 1,overflow: TextOverflow.ellipsis),

                           addVerticalSpace(MediaQuery.of(context).size.height * 0.008),

                           Text(_movie.date,style: AppTextStyle.movieDateStyle,maxLines: 1,overflow: TextOverflow.ellipsis),

                           addVerticalSpace(MediaQuery.of(context).size.height * 0.01),

                           Text(_movie.categorie,style: AppTextStyle.categoryTextStyle,maxLines: 1,overflow: TextOverflow.ellipsis),

                         ],
                       ),
                     )
                   ],
                 ),
               ),
              ),
            );
          }
        ),

        SearchTextField(controller: _searchFieldController),
      ],
    );
  }
}

BoxDecoration ListContainerDecoration(){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.black54,
  );
}

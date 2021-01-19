part of 'widgets.dart';

class ComingSoonCard extends StatelessWidget {
  final Movie movie;
  final Function onTap;

  ComingSoonCard(this.movie, {this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(imageBaseUrl + "w500" + movie.posterPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        height: 160,
        width: 120,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.81),
              Colors.black.withOpacity(0)
            ],
          ),
        ),
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text(
      //           movie.title,
      //           style: whiteTextFont,
      //           maxLines: 2,
      //           overflow: TextOverflow.ellipsis,
      //         ),
      //         RaitingStars(
      //           voteAverage: movie.voteAverage,
      //         ),
      //       ]),
      ),
    );
  }
}

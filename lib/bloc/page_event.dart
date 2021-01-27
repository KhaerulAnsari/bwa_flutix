part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  final int bottomNavbarIndex;
  final bool isExpired;

  GoToMainPage({this.bottomNavbarIndex = 0, this.isExpired = false});

  @override
  List<Object> get props => [bottomNavbarIndex, isExpired];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;

  GoToRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;

  GoToPreferencePage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;

   GoToAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class GoToMovieDetailPage extends PageEvent {
  final Movie movie;

  GoToMovieDetailPage(this.movie);
  @override
  List<Object> get props => [movie];

}

class GoToSelectSchedulPage extends PageEvent {
  final MovieDetail movieDetail;

  GoToSelectSchedulPage(this.movieDetail);
  @override
  List<Object> get props => [movieDetail];

}

class GoToSelectSeatPage extends PageEvent {
  final Ticket ticket;

  GoToSelectSeatPage(this.ticket);
  @override
  List<Object> get props => [ticket];
}

class GoToCheckoutPage extends PageEvent {
  final Ticket ticket;

  GoToCheckoutPage(this.ticket);
  @override
  List<Object> get props => [ticket];
}

class GoToSuccessPage extends PageEvent{
  final Ticket ticket;
  final FlutixTransaction transaction;

  GoToSuccessPage(this.ticket, this.transaction);
  @override
  List<Object> get props => [ticket, transaction];
}

class GoToTicketDetailPage extends PageEvent{
  final Ticket ticket;

  GoToTicketDetailPage(this.ticket);
  @override
  List<Object> get props => [ticket];
}

class GoToProfilePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToTopUpPage extends PageEvent {
  final PageEvent pageEvent;

  GoToTopUpPage(this.pageEvent);
  @override
  List<Object> get props => [pageEvent];
}

class GoToWalletPage extends PageEvent{
  final PageEvent pageEvent;

  GoToWalletPage(this.pageEvent);
  @override
  List<Object> get props => [pageEvent];
}






class Api {
  static const token = '';
  static const apiUrl = '';
  static Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'X-JDS-Authorization': token
  };

  // Auth
  static const signIn = '/signin';
  static const signUp = '/signup';
  static const profile = '/profile';
  static const lostpassword = '/lostpassword';
  static const updatepassword = '/updatepassword';

  // Home
  static const homilies = '/homilies';
  static const masses = '/masses';
  static const tvshows = '/tvshows';
  static const words = '/words';
  static const constances = '/constances';
  static const songs = '/songs';
  static const tutorial = '/tutorial';

}

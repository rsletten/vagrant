# init.pp
class bla(
  String $wassup = undef
) {

  notify{ 'Bla':
    message => $wassup
  }

}

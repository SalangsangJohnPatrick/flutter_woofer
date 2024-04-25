class AppUsers {
  AppUsers({
    required this.fname,
    required this.lname,
    required this.email,
    required this.usernum,
    required this.userpass,
  });
  final String fname;
  final String lname;
  final String email;
  final String usernum;
  final String userpass;

  // get UserIndex => null;
}

class ListUsers {
  List<AppUsers> UserInfo = [
    AppUsers(
        fname: 'Lawrence',
        lname: 'Cruz',
        email: 'mail@mail.com',
        usernum: '12345',
        userpass: 'AA'),
    AppUsers(
        fname: 'Leone',
        lname: 'Nucup',
        email: 'mail2@mail.com',
        usernum: '56789',
        userpass: 'BB'),
    AppUsers(
        fname: 'Fred',
        lname: 'Jaafary',
        email: 'mail3@mail.com',
        usernum: '123789',
        userpass: 'CC'),
    AppUsers(
        fname: 'John',
        lname: 'Salangsang',
        email: 'mail4@mail.com',
        usernum: '456123',
        userpass: 'DD')
  ];

  List<String> get getUsermail {
    List<String> mail = [];
    for (AppUsers user in UserInfo) {
      mail.add(user.email);
    }
    return mail;
  }

  List<String> get getUserPass {
    List<String> pass = [];
    for (AppUsers user in UserInfo) {
      pass.add(user.userpass);
    }
    return pass;
  }

  void addUser(AppUsers user) {
    UserInfo.add(user);
    UserInfo2.add(user);
  }
}

ListUsers listUser = ListUsers();
List<AppUsers> UserInfo2 = [
  AppUsers(
      fname: 'Lawrence',
      lname: 'Cruz',
      email: 'mail@mail.com',
      usernum: '12345',
      userpass: 'AA'),
  AppUsers(
      fname: 'Leone',
      lname: 'Nucup',
      email: 'mail2@mail.com',
      usernum: '56789',
      userpass: 'BB'),
  AppUsers(
      fname: 'Fred',
      lname: 'Jaafary',
      email: 'mail3@mail.com',
      usernum: '123789',
      userpass: 'CC'),
  AppUsers(
      fname: 'John',
      lname: 'Salangsang',
      email: 'mail4@mail.com',
      usernum: '456123',
      userpass: 'DD')
];

int currentUser = 0;

void setCurrentUser(current) {
  currentUser = current;
}

int giveCurrentUser() {
  return currentUser;
}

int getIndexFromEmail(email2) {
  int index = UserInfo2.indexWhere((st) => st.email == email2);
  return index;
}

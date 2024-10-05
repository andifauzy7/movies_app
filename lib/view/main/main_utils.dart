enum MainMenu {
  home,
  search,
  watchList;

  int get page {
    switch(this){
      case MainMenu.home:
        return 0;
      case MainMenu.search:
        return 1;
      case MainMenu.watchList:
        return 2;
    }
  }

  static MainMenu mapToMainMenu(int index) {
    switch (index) {
      case 1:
        return MainMenu.search;
      case 2:
        return MainMenu.watchList;
      case 0:
      default:
        return MainMenu.home;
    }
  }
}

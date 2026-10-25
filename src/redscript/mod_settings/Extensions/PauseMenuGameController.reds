// Wrap instead of replace so the vanilla list and items other mods add are kept.
@wrapMethod(PauseMenuGameController)
private func PopulateMenuItemList() -> Void {
  wrappedMethod();
  this.AddMenuItem(GetLocalizedText("UI-Labels-ModSettings"), n"OnSwitchToModSettings");
  this.m_menuListController.Refresh();
}

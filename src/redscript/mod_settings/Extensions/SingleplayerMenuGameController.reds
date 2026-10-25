// Wrap instead of replace so the vanilla list (including the 2.5 mod.io entry)
// and items other mods add are kept. Mod Settings is appended at the end.
@wrapMethod(SingleplayerMenuGameController)
private func PopulateMenuItemList() -> Void {
  wrappedMethod();
  this.AddMenuItem(GetLocalizedText("UI-Labels-ModSettings"), n"OnSwitchToModSettings");
  this.m_menuListController.Refresh();
  this.SetCursorOverWidget(inkCompoundRef.GetWidgetByIndex(this.m_menuList, 0));
}

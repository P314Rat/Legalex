// in src/MyMenu.js
import * as React from "react";
import { Menu, useSidebarState, MenuItemLink } from "react-admin";
import LabelIcon from "@mui/icons-material/Label";

export const MyMenu = () => {
  const [open] = useSidebarState();

  return (
    <Menu>
      <Menu.DashboardItem />
    </Menu>
  );
};

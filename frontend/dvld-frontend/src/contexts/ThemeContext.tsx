import { useState, useEffect, useContext, createContext } from "react";

type Themes = "dark" | "light";

interface ThemeContextTypes {
  theme: Themes;
  setTheme: (theme: Themes) => void;
}

const ThemeContext = createContext<ThemeContextTypes | undefined>(undefined);

export const ThemeProvider: React.FC<{children: React.ReactNode}> = ({children}) => {
  const [theme, setTheme] = useState(() => {
    return (localStorage.getItem("theme") as Themes) || "dark";
  });
useEffect(() => {
  localStorage.setItem("theme", theme);
}, [theme])

return (
  <ThemeContext.Provider value={{theme, setTheme}}>
    {children}
  </ThemeContext.Provider>
);
};

export const useTheme = () => {
  const context = useContext(ThemeContext);
  if(!context) throw new Error ("useTheme must be used within a ThemeProvider");
  return context;
};

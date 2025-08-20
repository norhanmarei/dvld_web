import { useState, useEffect, useContext, createContext } from "react";

type Accents = "purple" | "pink" | "yellow" | "red" | "green" | "blue";

interface AccentContextTypes{
  accent: Accents;
  setAccent: (accent: Accents)=>void;
}

const AccentContext = createContext<AccentContextTypes | undefined>(undefined);

export const AccentProvider: React.FC<{children: React.ReactNode}> = ({children})=> {
  const [accent, setAccent] = useState(()=>{
    return (localStorage.getItem("accent") as Accents) || "purple";
  })
  useEffect(() => {
    localStorage.setItem("accent", accent);
  }, [accent])
  return (
    <AccentContext.Provider value={{accent, setAccent}}>
      {children}
    </AccentContext.Provider>
  );
};

export const useAccent = ()=>{
  const context = useContext(AccentContext);
  if(!context) throw new Error("useAccent must be used within AccentProvider");
  return context;
};

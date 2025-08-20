import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import { ThemeProvider } from "./contexts/ThemeContext";
import { AccentProvider } from "./contexts/AccentContext";

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <ThemeProvider>
      <AccentProvider>
        <App />
      </AccentProvider>
    </ThemeProvider>
  </React.StrictMode>
);

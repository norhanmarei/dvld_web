import { useAccent } from "../contexts/AccentContext";
import { ButtonHTMLAttributes, forwardRef } from "react";
import cn from "classnames";

type Size = "sm" | "md" | "lg";

interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  size?: Size;
  text?: string;
}

const Button = forwardRef<HTMLButtonElement, ButtonProps>(
  ({ size = "md", text = "", className, ...props }, ref) => {
    const { accent } = useAccent();

    const sizeClass =
      size === "sm" ? "text-sm px-2 py-1"
      : size === "md" ? "text-base px-3 py-2"
      : "text-lg px-4 py-3";

    const classes = cn(
      `bg-${accent}-500 hover:bg-${accent}-600 text-white rounded-md`,
      sizeClass,
      className
    );

    return (
      <button ref={ref} className={classes} {...props}>
        {text}
      </button>
    );
  }
);

Button.displayName = "Button";
export default Button;

import "./globals.css";
import Header from "@/components/header";
import { AppWrapper } from '../components/context';

export const metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className="font-Helvetica">
        <AppWrapper>
          {children}
        </AppWrapper>
      </body>
    </html>
  );
}

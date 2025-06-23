import '../global.css';
import '@/global.css';
import { GluestackUIProvider } from '@/components/ui/gluestack-ui-provider';
import { Stack } from 'expo-router';

export default function RootLayout() {
  return <GluestackUIProvider mode='dark'><Stack /></GluestackUIProvider>;
}

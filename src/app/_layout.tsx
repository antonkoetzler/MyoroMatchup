import '@/global.css';
import { GluestackUIProvider } from '@/src/components/ui/gluestack-ui-provider';
import { Stack } from 'expo-router';

export default function RootLayout() {
  return <GluestackUIProvider mode='dark'><Stack /></GluestackUIProvider>;
}

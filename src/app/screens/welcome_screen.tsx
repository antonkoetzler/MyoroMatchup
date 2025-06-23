import { Button } from '@/src/components/ui/button';
import { SafeAreaView, StatusBar, Text } from 'react-native';
import { MaterialCommunityIcons } from '@expo/vector-icons';

export default function Index() {
  return (
    <SafeAreaView className={'w-screen h-screen bg-secondary-100'} >
      <StatusBar />
      <MaterialCommunityIcons name={'soccer'} size={200} color={'black'} />
      <Text>Welcome to MyoroPlayer</Text>
      <Button><Text>FUck off gallager</Text></Button>
    </SafeAreaView>
  )
}

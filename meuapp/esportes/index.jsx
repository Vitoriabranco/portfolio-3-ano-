import { View, Text, Button, StyleSheet, Image } from 'react-native';
import { Link } from 'expo-router';

export default function esportes() {
  return (
    <View style={styles.container}>
       <Image style={styles.image} source={require('../../../assets/images/esportes.png.jpeg')}/>
      <Text style={styles.title}>Esportes</Text>
      <Text style={styles.text}>Há três anos que eu pratico arte marcial e musculação. </Text>

      {/* Botão para voltar para a página "Sobre Mim" */}
      <Link href="/meuapp" asChild>
        <Button title="Voltar para Sobre Mim" />
      </Link>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  text: {
    fontSize: 18,
    marginBottom: 10,
  },
  image: {
    width: 300,
    height: 350,
    marginBottom: 10,
    borderRadius: 5
  }
});
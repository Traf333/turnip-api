
export const resetDatabase = async () => {
  await AsyncStorage.clear();
  console.log('database destroyed');
};

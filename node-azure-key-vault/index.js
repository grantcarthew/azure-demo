const { DefaultAzureCredential } = require('@azure/identity')
const { SecretClient } = require('@azure/keyvault-secrets')

async function main () {
  const keyVaultName = 'rooblue-key-vault'
  const secretName = 'node-azure-key-vault-demo'
  const KVUri = 'https://' + keyVaultName + '.vault.azure.net'

  const credential = new DefaultAzureCredential()
  const client = new SecretClient(KVUri, credential)
  const retrievedSecret = await client.getSecret(secretName)

  console.log('Secret value follows:')
  console.log(retrievedSecret.value)
}

main()
  .then(() => console.log('Done'))
  .catch((ex) => console.log(ex.message))

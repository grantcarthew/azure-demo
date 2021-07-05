const axios = require('axios')
const loginData = 'grant_type=client_credentials&client_id=6d3d435d-a1a4-40f0-8975-ba56f505bac1&client_secret=6I0xa/1LS3K036dgX1secglIhHaA7lVlUvLukzjDNqs=&resource=https%3A%2F%2Fmanagement.azure.com%2F'

async function main () {
  const { data: token } = await axios.post('https://login.microsoftonline.com/976166b2-7d5c-46f9-8e51-bfb6ba3ed97a/oauth2/token', loginData)
  const result = await axios.get('https://management.azure.com/subscriptions/7d070ae0-20ed-4d9c-8411-4d63ce9e5b27/providers/Microsoft.Web/sites?api-version=2016-08-01', {
    headers: {
      'Authorization': 'Bearer ' + token.access_token
    }
  })
  console.dir(result.data)
}

main()


// https://medium.com/@mauridb/calling-azure-rest-api-via-curl-eb10a06127

// https://docs.microsoft.com/en-us/rest/api/azure/
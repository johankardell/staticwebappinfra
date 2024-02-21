param name string = 'jkstaticwebappdemo'
param location string = resourceGroup().location
param sku string = 'Free'
param repositoryUrl string = 'https://github.com/johankardell/staticwebappcontent'

resource staticWebApp 'Microsoft.Web/staticSites@2023-01-01' = {
  name: name
  location: location
  sku: {
    name: sku
  }
  properties: {
    repositoryUrl: repositoryUrl
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'GitHub'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}

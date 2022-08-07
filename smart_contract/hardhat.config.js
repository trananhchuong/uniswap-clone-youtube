require('@nomiclabs/hardhat-waffle')
require('dotenv').config(); //all the key value pairs are being made available due to this lib
const { API_URL_KEY, PRIVATE_KEY } = process.env; //environment variables are being loaded here.

module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: API_URL_KEY,
      accounts: [`0x${PRIVATE_KEY}`],
    },
  },
}

'use strict'

module.exports = async (event, context) => {
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: "Hello from OpenFaaS CI/CD 🚀"
    })
  }
}

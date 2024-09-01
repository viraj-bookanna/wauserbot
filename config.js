const { Client, LocalAuth } = require('whatsapp-web.js');

client_config = {
    puppeteer: {
        headless: true,
        args: ['--no-sandbox', '--disable-setuid-sandbox', '--disable-gpu', '--disable-dev-shm-usage', '--blink-settings=imagesEnabled=false', ],
    },
    authStrategy: new LocalAuth({
        clientId: "wauserbot"
    })
}
module.exports = {
	client: new Client(client_config),
}
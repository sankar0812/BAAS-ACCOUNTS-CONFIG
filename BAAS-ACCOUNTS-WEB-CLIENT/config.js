/**
@CreatedBy        : Uma Kohila
@CreatedTime      : Sep 24 2022
@Description      : This file contains all the enviroment configurations for web client
**/

const Appstorefile = require("./appstorefile");

const appStoreConfig = new Appstorefile()

module.exports = class Configuration {

    PLATFORM_WEB_CLIENT_HOST = "localhost";
    PLATFORM_WEB_CLIENT_PORT = 4000;
    PLATFORM_WEB_CLIENT_IS_PROD_MODE = false;
    PLATFORM_WEB_CLIENT_SECURITY_ENABLED = "true";
    PLATFORM_WEB_CLIENT_SECURITY_KEY_FILE_PATH = "D:/Gove/Cert/privateKey.key";
    PLATFORM_WEB_CLIENT_SECURITY_CERT_FILE_PATH = "D:/Gove/Cert/certificate.crt";
    PLATFORM = {
        PLATFORM_GATEWAY_URL: appStoreConfig.PLATFORM.PLATFORM_GATEWAY_URL
    }
};
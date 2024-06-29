require "active_storage/service/azure_storage_service"

Rails.application.config.active_storage.service_configurations = {
  microsoft: {
    service: "AzureStorage",
    storage_account_name: ENV["AZURE_STORAGE_ACCOUNT_NAME"],
    storage_access_key: ENV["AZURE_STORAGE_ACCESS_KEY"],
    container: ENV["AZURE_STORAGE_CONTAINER"],
    public: true
  }
}

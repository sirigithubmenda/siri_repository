resource "azurerm_storage_account" "sa_name1" {
  for_each                 = "siri_sa"
  name                     = each.value.name
  resource_group_name      = each.value.name
  location                 = each.value.lcn
  account_tier             = each.value.a_t
  account_replication_type = each.value.a_r_t
}


resource "azurerm_storage_container" "cn_1" {
  storage_account_name = azurerm_storage_account.sa_name1.name
  count                = length(var.cn_name1)
  name                 = var.cn_name1[count.index]
}

resource "azurerm_storage_container" "cn_2" {
  storage_account_name = azurerm_storage_account.sa_name1.name
  count                = length(var.cn_name2)
  name                 = var.cn_name2[count.index]
}

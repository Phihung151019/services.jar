.class public abstract Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ACCESS_CONTROL_MAP:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;->ACCESS_CONTROL_MAP:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const/4 v3, 0x0

    const-string v4, "DA"

    const-string/jumbo v5, "SET_ADMIN_REMOVABLE_TRUE"

    invoke-static {v3, v2, v4, v5, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v5, "DA&&KNOX_API_ACCESS_GRANT"

    const-string/jumbo v6, "SET_ADMIN_REMOVABLE_FALSE"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const-string v6, "INSTALL_APPLICATION"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "UNINSTALL_APPLICATION"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "APPLICATION_STATE"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "INSTALLATION_DISABLED"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "UNINSTALLATION_DISABLED"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "STOP_APP"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "START_APP"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "PREVENT_START_BLACKLIST"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v6, "RESTRICTION_ADMIN"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v6, 0x1

    const-string v7, "DISABLE_UPDATE_WHITELIST"

    invoke-static {v6, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v7, "DISABLE_UPDATE_BLACKLIST"

    invoke-static {v6, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v7, "ADD_PACKAGE_WHITE_LIST"

    invoke-static {v6, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v7, "ADD_PACKAGE_INSTALLATION_BLACK_LIST"

    invoke-static {v3, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_AUTHORIZATION"

    const-string v8, "DO_OR_PO"

    const-string/jumbo v9, "SET_AUTHORIZED_SCOPES"

    invoke-static {v3, v7, v8, v9, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v9, "GET_AUTHORIZED_SCOPES"

    invoke-static {v3, v7, v8, v9, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v7, "SET_APPLICATION_RESTRICTIONS"

    invoke-static {v3, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const-string v7, "DO_OR_PO||REMOTE_CONTROL||KNOX_RC_API_ACCESS_GRANT"

    const-string v8, "INJECT_KEY_EVENT"

    invoke-static {v3, v2, v7, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v8, "INJECT_POINTER_EVENT"

    invoke-static {v3, v2, v7, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v8, "INJECT_TRACKBALL_EVENT"

    invoke-static {v3, v2, v7, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v8, "REMOTE_DESKTOP_CONTROL"

    invoke-static {v3, v2, v7, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const-string/jumbo v8, "REMOTE_DESKTOP_ADVANCED"

    invoke-static {v3, v2, v7, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    invoke-static {v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v2

    const-string v7, "HARD_KEY_INTENT_STATE"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const-string v7, "HARD_KEY_INTENT_BROADCAST"

    invoke-static {v3, v2, v5, v7, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    invoke-static {v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v8

    const-string/jumbo v9, "RESET_CREDENTIAL_STORAGE"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v8

    const-string v9, "ADD_PACKAGE_CERT_WHITE_LIST"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v5, v8}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v8

    const-string v9, "DELETE_CERT_FROM_USER_SCOPE_KEYSTORE"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "DELETE_CERT_FROM_GLOBAL_SCOPE_KEYSTORE"

    invoke-static {v6, v7, v5, v8, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v2

    const-string v8, "INSTALL_CERT_TO_USER_SCOPE_KEYSTORE"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INSTALL_CERT_TO_GLOBAL_SCOPE_KEYSTORE"

    invoke-static {v6, v7, v5, v2, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "NONE"

    const-string/jumbo v6, "PROVISION_CERT_APP"

    invoke-static {v3, v7, v2, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v2, "DO_OR_PO||PROVISION_CERT"

    const-string/jumbo v6, "PROVISION_CERT_SYSTEM"

    invoke-static {v3, v7, v2, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const-string v6, "ENABLE_DOMAIN_FILTER_ON_IP_TABLES_TRUE"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "ENABLE_DOMAIN_FILTER_ON_IP_TABLES_FALSE"

    invoke-static {v3, v2, v4, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "ENABLE_DOMAIN_FILTER_REPORT_TRUE"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "ENABLE_DOMAIN_FILTER_REPORT_FALSE"

    invoke-static {v3, v2, v4, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "ENABLE_FIREWALL_TRUE"

    invoke-static {v3, v2, v5, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v6, "ENABLE_FIREWALL_FALSE"

    invoke-static {v3, v2, v4, v6, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v4, "ADD_DOMAIN_FILTER_RULES"

    invoke-static {v3, v2, v5, v4, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v4, "ADD_RULES"

    invoke-static {v3, v2, v5, v4, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v4, "GET_DOMAIN_FILTER_REPORT"

    invoke-static {v3, v2, v5, v4, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const-string v4, "ENABLE_AUDIT_LOG"

    invoke-static {v3, v2, v5, v4, v0}, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "KNOX_RC_API_ACCESS_GRANT"

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_RC_API_ACCESS_GRANT"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KNOX_API_ACCESS_GRANT"

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

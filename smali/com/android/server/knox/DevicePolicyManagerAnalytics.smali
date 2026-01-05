.class public final Lcom/android/server/knox/DevicePolicyManagerAnalytics;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_EVENTS_MAP:Ljava/util/HashMap;

.field public static final DPMS_EX_ADMINS:Ljava/util/ArrayList;

.field public static final DPMS_EX_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

.field public static final eventCountAndDayLimit:Ljava/util/HashMap;

.field public static userUnlockReceiverRegistered:Z

.field public static final userUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mSavedEvents:Ljava/util/Map;

.field public mUserUnlockReceiver:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;

.field public final oneUiAndOSVersion:Ljava/lang/String;

.field public final testPkgInfoMap:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->userUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->userUnlockReceiverRegistered:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->eventCountAndDayLimit:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_ADMINS:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "SET_KEYGUARD_DISABLED_FEATURES"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ADD_USER_RESTRICTION"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, "REMOVE_USER_RESTRICTION"

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "SET_PERMISSION_GRANT_STATE"

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x1e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "SET_CAMERA_DISABLED"

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x30

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v5

    const-string v5, "ADD_CROSS_PROFILE_INTENT_FILTER"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v18, 0x3e

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v18, v5

    const-string/jumbo v5, "SET_APPLICATION_RESTRICTIONS"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x48

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v20, v5

    const-string v5, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x97

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v22, v5

    const-string v5, "BIND_CROSS_PROFILE_SERVICE"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v24, 0xd9

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v24, v5

    const-string/jumbo v5, "SET_APPLICATION_EXEMPTIONS"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x7d

    const-string v5, "CROSS_PROFILE_APPS_GET_TARGET_USER_PROFILES"

    move-object/from16 v26, v0

    const/16 v0, 0xcc

    move-object/from16 v27, v14

    const-string v14, "GET_ACCOUNT_AUTH_TOKEN"

    invoke-static {v4, v2, v5, v0, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "com.google.android.gms.supervision"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "SET_PASSWORD_QUALITY"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "SET_PASSWORD_MINIMUM_LENGTH"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string/jumbo v2, "SET_PASSWORD_MINIMUM_NUMERIC"

    const/4 v3, 0x4

    const-string/jumbo v4, "SET_PASSWORD_MINIMUM_NON_LETTER"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x5

    const-string/jumbo v3, "SET_PASSWORD_MINIMUM_LETTERS"

    const/4 v4, 0x6

    const-string/jumbo v5, "SET_PASSWORD_MINIMUM_LOWER_CASE"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x7

    const-string/jumbo v3, "SET_PASSWORD_MINIMUM_UPPER_CASE"

    const/16 v4, 0x8

    const-string/jumbo v5, "SET_PASSWORD_MINIMUM_SYMBOLS"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_NOW"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "WIPE_DATA_WITH_REASON"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "SET_SECURE_SETTING"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    const-string/jumbo v4, "SET_SECURITY_LOGGING_ENABLED"

    const/16 v5, 0x10

    const-string/jumbo v14, "RETRIEVE_SECURITY_LOGS"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x11

    const-string/jumbo v4, "RETRIEVE_PRE_REBOOT_SECURITY_LOGS"

    const/16 v5, 0x12

    const-string/jumbo v14, "SET_PERMISSION_POLICY"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "INSTALL_KEY_PAIR"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x15

    const-string v4, "INSTALL_CA_CERT"

    const/16 v5, 0x16

    const-string v14, "CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x17

    const-string/jumbo v4, "REMOVE_KEY_PAIR"

    const/16 v5, 0x18

    const-string/jumbo v14, "UNINSTALL_CA_CERTS"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x19

    const-string/jumbo v4, "SET_CERT_INSTALLER_PACKAGE"

    const/16 v5, 0x1a

    const-string/jumbo v14, "SET_ALWAYS_ON_VPN_PACKAGE"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1b

    const-string/jumbo v4, "SET_PERMITTED_INPUT_METHODS"

    const/16 v5, 0x1c

    const-string/jumbo v14, "SET_PERMITTED_ACCESSIBILITY_SERVICES"

    invoke-static {v3, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "SET_SCREEN_CAPTURE_DISABLED"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v27

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1f

    const-string/jumbo v5, "QUERY_SUMMARY_FOR_USER"

    const/16 v14, 0x20

    const-string/jumbo v0, "QUERY_SUMMARY"

    invoke-static {v4, v1, v5, v14, v0}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x21

    const-string/jumbo v4, "QUERY_DETAILS"

    const/16 v5, 0x22

    const-string/jumbo v14, "REBOOT"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x23

    const-string/jumbo v4, "SET_MASTER_VOLUME_MUTED"

    const/16 v5, 0x24

    const-string/jumbo v14, "SET_AUTO_TIME_REQUIRED"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x25

    const-string/jumbo v4, "SET_KEYGUARD_DISABLED"

    const/16 v5, 0x26

    const-string/jumbo v14, "SET_STATUS_BAR_DISABLED"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x27

    const-string/jumbo v4, "SET_ORGANIZATION_COLOR"

    const/16 v5, 0x28

    const-string/jumbo v14, "SET_PROFILE_NAME"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x29

    const-string/jumbo v4, "SET_USER_ICON"

    const/16 v5, 0x2a

    const-string/jumbo v14, "SET_DEVICE_OWNER_LOCK_SCREEN_INFO"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x2b

    const-string/jumbo v4, "SET_SHORT_SUPPORT_MESSAGE"

    const/16 v5, 0x2c

    const-string/jumbo v14, "SET_LONG_SUPPORT_MESSAGE"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x2d

    const-string/jumbo v4, "SET_CROSS_PROFILE_CONTACTS_SEARCH_DISABLED"

    const/16 v5, 0x2e

    const-string/jumbo v14, "SET_CROSS_PROFILE_CALLER_ID_DISABLED"

    invoke-static {v0, v1, v4, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "SET_BLUETOOTH_CONTACT_SHARING_DISABLED"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x31

    const-string v14, "ADD_CROSS_PROFILE_WIDGET_PROVIDER"

    const/16 v2, 0x32

    const-string/jumbo v0, "SET_SYSTEM_UPDATE_POLICY"

    invoke-static {v5, v1, v14, v2, v0}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x33

    const-string/jumbo v2, "SET_LOCKTASK_MODE_ENABLED"

    const/16 v5, 0x34

    const-string v14, "ADD_PERSISTENT_PREFERRED_ACTIVITY"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x35

    const-string/jumbo v2, "REQUEST_BUGREPORT"

    const/16 v5, 0x36

    const-string v14, "GET_WIFI_MAC_ADDRESS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x37

    const-string/jumbo v2, "REQUEST_QUIET_MODE_ENABLED"

    const/16 v5, 0x38

    const-string/jumbo v14, "WORK_PROFILE_LOCATION_CHANGED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x39

    const-string v2, "DO_USER_INFO_CLICKED"

    const/16 v5, 0x3a

    const-string/jumbo v14, "TRANSFER_OWNERSHIP"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x3b

    const-string v2, "GENERATE_KEY_PAIR"

    const/16 v5, 0x3c

    const-string/jumbo v14, "SET_KEY_PAIR_CERTIFICATE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "SET_KEEP_UNINSTALLED_PACKAGES"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3f

    const-string/jumbo v14, "SET_APPLICATION_HIDDEN"

    const/16 v0, 0x40

    const-string v2, "ENABLE_SYSTEM_APP"

    invoke-static {v5, v1, v14, v0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x41

    const-string v2, "ENABLE_SYSTEM_APP_WITH_INTENT"

    const/16 v5, 0x42

    const-string v14, "INSTALL_EXISTING_PACKAGE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x43

    const-string/jumbo v2, "SET_UNINSTALL_BLOCKED"

    const/16 v5, 0x44

    const-string/jumbo v14, "SET_PACKAGES_SUSPENDED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x45

    const-string/jumbo v2, "ON_LOCK_TASK_MODE_ENTERING"

    const/16 v5, 0x46

    const-string/jumbo v14, "SET_CROSS_PROFILE_CALENDAR_PACKAGES"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v2, v22

    move-object/from16 v0, v23

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x49

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v14, "INSTALL_SYSTEM_UPDATE"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4a

    const-string v14, "INSTALL_SYSTEM_UPDATE_ERROR"

    const/16 v0, 0x4b

    const-string v2, "IS_MANAGED_KIOSK"

    invoke-static {v5, v1, v14, v0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x4c

    const-string v2, "IS_UNATTENDED_MANAGED_KIOSK"

    const/16 v5, 0x4d

    const-string/jumbo v14, "PROVISIONING_MANAGED_PROFILE_ON_FULLY_MANAGED_DEVICE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x4e

    const-string/jumbo v2, "PROVISIONING_PERSISTENT_DEVICE_OWNER"

    const/16 v5, 0x4f

    const-string/jumbo v14, "PROVISIONING_ENTRY_POINT_NFC"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x50

    const-string/jumbo v2, "PROVISIONING_ENTRY_POINT_QR_CODE"

    const/16 v5, 0x51

    const-string/jumbo v14, "PROVISIONING_ENTRY_POINT_CLOUD_ENROLLMENT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x52

    const-string/jumbo v2, "PROVISIONING_ENTRY_POINT_ADB"

    const/16 v5, 0x53

    const-string/jumbo v14, "PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x54

    const-string/jumbo v2, "PROVISIONING_DPC_PACKAGE_NAME"

    const/16 v5, 0x55

    const-string/jumbo v14, "PROVISIONING_DPC_INSTALLED_BY_PACKAGE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x56

    const-string/jumbo v2, "PROVISIONING_PROVISIONING_ACTIVITY_TIME_MS"

    const/16 v5, 0x57

    const-string/jumbo v14, "PROVISIONING_PREPROVISIONING_ACTIVITY_TIME_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x58

    const-string/jumbo v2, "PROVISIONING_ENCRYPT_DEVICE_ACTIVITY_TIME_MS"

    const/16 v5, 0x59

    const-string/jumbo v14, "PROVISIONING_WEB_ACTIVITY_TIME_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x5d

    const-string/jumbo v2, "PROVISIONING_NETWORK_TYPE"

    const/16 v5, 0x5e

    const-string/jumbo v14, "PROVISIONING_ACTION"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x5f

    const-string/jumbo v2, "PROVISIONING_EXTRAS"

    const/16 v5, 0x60

    const-string/jumbo v14, "PROVISIONING_COPY_ACCOUNT_TASK_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x61

    const-string/jumbo v2, "PROVISIONING_CREATE_PROFILE_TASK_MS"

    const/16 v5, 0x62

    const-string/jumbo v14, "PROVISIONING_START_PROFILE_TASK_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x63

    const-string/jumbo v2, "PROVISIONING_DOWNLOAD_PACKAGE_TASK_MS"

    const/16 v5, 0x64

    const-string/jumbo v14, "PROVISIONING_INSTALL_PACKAGE_TASK_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x65

    const-string/jumbo v2, "PROVISIONING_CANCELLED"

    const/16 v14, 0x66

    const-string/jumbo v5, "PROVISIONING_ERROR"

    invoke-static {v0, v1, v2, v14, v5}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x67

    const-string/jumbo v2, "PROVISIONING_COPY_ACCOUNT_STATUS"

    const/16 v5, 0x68

    const-string/jumbo v14, "PROVISIONING_TOTAL_TASK_TIME_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x69

    const-string/jumbo v2, "PROVISIONING_SESSION_STARTED"

    const/16 v5, 0x6a

    const-string/jumbo v14, "PROVISIONING_SESSION_COMPLETED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x6b

    const-string/jumbo v2, "PROVISIONING_TERMS_ACTIVITY_TIME_MS"

    const/16 v5, 0x6c

    const-string/jumbo v14, "PROVISIONING_TERMS_COUNT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x6d

    const-string/jumbo v2, "PROVISIONING_TERMS_READ"

    const/16 v5, 0x6e

    const-string/jumbo v14, "SEPARATE_PROFILE_CHALLENGE_CHANGED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x6f

    const-string/jumbo v2, "SET_GLOBAL_SETTING"

    const/16 v5, 0x70

    const-string v14, "INSTALL_PACKAGE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x71

    const-string/jumbo v2, "UNINSTALL_PACKAGE"

    const/16 v5, 0x72

    const-string/jumbo v14, "WIFI_SERVICE_ADD_NETWORK_SUGGESTIONS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x73

    const-string/jumbo v2, "WIFI_SERVICE_ADD_OR_UPDATE_NETWORK"

    const/16 v5, 0x74

    const-string/jumbo v14, "QUERY_SUMMARY_FOR_DEVICE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x75

    const-string/jumbo v2, "REMOVE_CROSS_PROFILE_WIDGET_PROVIDER"

    const/16 v5, 0x76

    const-string v14, "ESTABLISH_VPN"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x77

    const-string/jumbo v2, "SET_NETWORK_LOGGING_ENABLED"

    const/16 v5, 0x78

    const-string/jumbo v14, "RETRIEVE_NETWORK_LOGS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x79

    const-string/jumbo v2, "PROVISIONING_PREPARE_TOTAL_TIME_MS"

    const/16 v5, 0x7a

    const-string/jumbo v14, "PROVISIONING_PREPARE_STARTED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x7b

    const-string/jumbo v2, "PROVISIONING_PREPARE_COMPLETED"

    const/16 v5, 0x7c

    const-string/jumbo v14, "PROVISIONING_FLOW_TYPE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x7d

    const-string v2, "CROSS_PROFILE_APPS_GET_TARGET_USER_PROFILES"

    const/16 v5, 0x7e

    const-string v14, "CROSS_PROFILE_APPS_START_ACTIVITY_AS_USER"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x7f

    const-string/jumbo v2, "SET_AUTO_TIME"

    const/16 v5, 0x80

    const-string/jumbo v14, "SET_AUTO_TIME_ZONE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x81

    const-string/jumbo v2, "SET_USER_CONTROL_DISABLED_PACKAGES"

    const/16 v5, 0x82

    const-string/jumbo v14, "SET_FACTORY_RESET_PROTECTION"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x83

    const-string/jumbo v2, "SET_COMMON_CRITERIA_MODE"

    const/16 v5, 0x84

    const-string v14, "ALLOW_MODIFICATION_OF_ADMIN_CONFIGURED_NETWORKS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x85

    const-string/jumbo v2, "SET_TIME"

    const/16 v5, 0x86

    const-string/jumbo v14, "SET_TIME_ZONE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x87

    const-string/jumbo v2, "SET_PERSONAL_APPS_SUSPENDED"

    const/16 v5, 0x88

    const-string/jumbo v14, "SET_MANAGED_PROFILE_MAXIMUM_TIME_OFF"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x89

    const-string v2, "COMP_TO_ORG_OWNED_PO_MIGRATED"

    const/16 v5, 0x8a

    const-string/jumbo v14, "SET_CROSS_PROFILE_PACKAGES"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8b

    const-string/jumbo v2, "SET_INTERACT_ACROSS_PROFILES_APP_OP"

    const/16 v5, 0x8c

    const-string v14, "GET_CROSS_PROFILE_PACKAGES"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8d

    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_TRUE"

    const/16 v5, 0x8e

    const-string v14, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8f

    const-string v2, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_WHITELIST"

    const/16 v5, 0x90

    const-string v14, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x91

    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_TRUE"

    const/16 v5, 0x92

    const-string v14, "CAN_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x93

    const-string v2, "CAN_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    const/16 v5, 0x94

    const-string v14, "CREATE_CROSS_PROFILE_INTENT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x95

    const-string v2, "IS_MANAGED_PROFILE"

    const/16 v5, 0x96

    const-string/jumbo v14, "START_ACTIVITY_BY_INTENT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v2, v24

    move-object/from16 v0, v25

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x98

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v14, "PROVISIONING_DPC_SETUP_STARTED"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x99

    const-string/jumbo v14, "PROVISIONING_DPC_SETUP_COMPLETED"

    const/16 v0, 0x9a

    const-string/jumbo v2, "PROVISIONING_ORGANIZATION_OWNED_MANAGED_PROFILE"

    invoke-static {v5, v1, v14, v0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x9b

    const-string/jumbo v2, "RESOLVER_CROSS_PROFILE_TARGET_OPENED"

    const/16 v5, 0x9c

    const-string/jumbo v14, "RESOLVER_SWITCH_TABS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x9d

    const-string/jumbo v2, "RESOLVER_EMPTY_STATE_WORK_APPS_DISABLED"

    const/16 v5, 0x9e

    const-string/jumbo v14, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_PERSONAL"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x9f

    const-string/jumbo v2, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_WORK"

    const/16 v5, 0xa0

    const-string/jumbo v14, "RESOLVER_EMPTY_STATE_NO_APPS_RESOLVED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa1

    const-string/jumbo v2, "RESOLVER_AUTOLAUNCH_CROSS_PROFILE_TARGET"

    const/16 v5, 0xa2

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_APP"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa3

    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_SETTINGS"

    const/16 v5, 0xa4

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_ADMIN_RESTRICTED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa5

    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_WORK_APP"

    const/16 v5, 0xa6

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_PERSONAL_APP"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa7

    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_INSTALL_BANNER_INTENT"

    const/16 v5, 0xa8

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_CLICKED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa9

    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_NO_INTENT_CLICKED"

    const/16 v5, 0xaa

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_USER_CONSENTED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xab

    const-string v2, "CROSS_PROFILE_SETTINGS_PAGE_USER_DECLINED_CONSENT"

    const/16 v5, 0xac

    const-string v14, "CROSS_PROFILE_SETTINGS_PAGE_PERMISSION_REVOKED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xad

    const-string v2, "DOCSUI_EMPTY_STATE_NO_PERMISSION"

    const/16 v5, 0xae

    const-string v14, "DOCSUI_EMPTY_STATE_QUIET_MODE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xaf

    const-string v2, "DOCSUI_LAUNCH_OTHER_APP"

    const/16 v5, 0xb0

    const-string v14, "DOCSUI_PICK_RESULT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xb1

    const-string/jumbo v2, "SET_PASSWORD_COMPLEXITY"

    const/16 v5, 0xb2

    const-string v14, "CREDENTIAL_MANAGEMENT_APP_REQUEST_NAME"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xb3

    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_POLICY"

    const/16 v5, 0xb4

    const-string v14, "CREDENTIAL_MANAGEMENT_APP_REQUEST_ACCEPTED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xb5

    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REQUEST_DENIED"

    const/16 v5, 0xb6

    const-string v14, "CREDENTIAL_MANAGEMENT_APP_REQUEST_FAILED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xb7

    const-string v2, "CREDENTIAL_MANAGEMENT_APP_CREDENTIAL_FOUND_IN_POLICY"

    const/16 v5, 0xb8

    const-string v14, "CREDENTIAL_MANAGEMENT_APP_INSTALL_KEY_PAIR_FAILED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xb9

    const-string v2, "CREDENTIAL_MANAGEMENT_APP_GENERATE_KEY_PAIR_FAILED"

    const/16 v5, 0xba

    const-string v14, "CREDENTIAL_MANAGEMENT_APP_POLICY_LOOKUP_FAILED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xbb

    const-string v2, "CREDENTIAL_MANAGEMENT_APP_REMOVED"

    const/16 v5, 0xbc

    const-string/jumbo v14, "SET_ORGANIZATION_ID"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xbd

    const-string v2, "IS_ACTIVE_PASSWORD_SUFFICIENT_FOR_DEVICE"

    const/16 v5, 0xbe

    const-string/jumbo v14, "PLATFORM_PROVISIONING_COPY_ACCOUNT_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xbf

    const-string/jumbo v2, "PLATFORM_PROVISIONING_CREATE_PROFILE_MS"

    const/16 v5, 0xc0

    const-string/jumbo v14, "PLATFORM_PROVISIONING_START_PROFILE_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc1

    const-string/jumbo v2, "PLATFORM_PROVISIONING_COPY_ACCOUNT_STATUS"

    const/16 v5, 0xc2

    const-string/jumbo v14, "PLATFORM_PROVISIONING_ERROR"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc3

    const-string/jumbo v2, "PROVISIONING_PROVISION_MANAGED_PROFILE_TASK_MS"

    const/16 v5, 0xc4

    const-string/jumbo v14, "PROVISIONING_PROVISION_FULLY_MANAGED_DEVICE_TASK_MS"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc5

    const-string/jumbo v2, "PLATFORM_PROVISIONING_PARAM"

    const/16 v5, 0xc6

    const-string/jumbo v14, "SET_USB_DATA_SIGNALING"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc7

    const-string/jumbo v2, "SET_PREFERENTIAL_NETWORK_SERVICE_ENABLED"

    const/16 v5, 0xc8

    const-string/jumbo v14, "PROVISIONING_IS_LANDSCAPE"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc9

    const-string/jumbo v2, "PROVISIONING_IS_NIGHT_MODE"

    const/16 v5, 0xca

    const-string v14, "ADD_ACCOUNT"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xcb

    const-string v2, "ADD_ACCOUNT_EXPLICITLY"

    const/16 v5, 0xcc

    const-string v14, "GET_ACCOUNT_AUTH_TOKEN"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xcd

    const-string/jumbo v2, "RESET_PASSWORD"

    const/16 v5, 0xce

    const-string/jumbo v14, "RESET_PASSWORD_WITH_TOKEN"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xcf

    const-string/jumbo v2, "ROLE_HOLDER_PROVISIONING_START"

    const/16 v5, 0xd0

    const-string/jumbo v14, "ROLE_HOLDER_PROVISIONING_FINISH"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd1

    const-string/jumbo v2, "ROLE_HOLDER_UPDATER_UPDATE_START"

    const/16 v5, 0xd2

    const-string/jumbo v14, "ROLE_HOLDER_UPDATER_UPDATE_FINISH"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd3

    const-string/jumbo v2, "ROLE_HOLDER_UPDATER_UPDATE_RETRY"

    const/16 v5, 0xd4

    const-string/jumbo v14, "ROLE_HOLDER_UPDATER_UPDATE_FAILED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd5

    const-string/jumbo v2, "PLATFORM_ROLE_HOLDER_UPDATE_START"

    const/16 v5, 0xd6

    const-string/jumbo v14, "PLATFORM_ROLE_HOLDER_UPDATE_FINISHED"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd7

    const-string/jumbo v2, "PLATFORM_ROLE_HOLDER_UPDATE_FAILED"

    const/16 v5, 0xd8

    const-string/jumbo v14, "SET_MTE_POLICY"

    invoke-static {v0, v1, v2, v5, v14}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "SET_APPLICATION_EXEMPTIONS"

    move-object/from16 v2, v26

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SET_APPLICATION_EXEMPTIONS_COUNT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    const/16 v1, 0xa

    filled-new-array {v1, v0}, [I

    move-result-object v2

    move-object/from16 v8, v17

    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    filled-new-array {v2, v0}, [I

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v2, v0}, [I

    move-result-object v7

    invoke-virtual {v8, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x258

    filled-new-array {v7, v0}, [I

    move-result-object v7

    invoke-virtual {v8, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v0}, [I

    move-result-object v7

    invoke-virtual {v8, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v2, v0}, [I

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    filled-new-array {v2, v0}, [I

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v0}, [I

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string/jumbo v1, "SET_APPLICATION_EXEMPTIONS"

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mSavedEvents:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->testPkgInfoMap:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    const-string/jumbo p2, "ro.build.version.oneui"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "."

    if-lez v1, :cond_1

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit16 p2, p1, 0x2710

    rem-int/lit16 v0, p1, 0x2710

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo p2, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "1.0"

    :goto_0
    const-string/jumbo p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x24

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->oneUiAndOSVersion:Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DPMAnalyticsUserUnlockHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_4

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->testPkgInfoMap:Ljava/util/concurrent/ConcurrentMap;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static generateEventKey(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "apN"

    const-string/jumbo v1, "saV"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ";;"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/server/knox/DevicePolicyManagerAnalytics$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const-string/jumbo v3, "iV"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "bV"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p1, "BIND_CROSS_PROFILE_SERVICE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_3

    :sswitch_1
    const-string/jumbo p1, "SET_APPLICATION_RESTRICTIONS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_3

    :sswitch_2
    const-string/jumbo p1, "SET_PERMISSION_GRANT_STATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_3

    :sswitch_3
    const-string p1, "ADD_USER_RESTRICTION"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_3

    :sswitch_4
    const-string/jumbo p1, "SET_KEYGUARD_DISABLED_FEATURES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_3

    :sswitch_5
    const-string/jumbo p1, "SET_APPLICATION_EXEMPTIONS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_3

    :sswitch_6
    const-string p1, "ADD_CROSS_PROFILE_INTENT_FILTER"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_3

    :sswitch_7
    const-string p1, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    goto :goto_3

    :sswitch_8
    const-string/jumbo p1, "REMOVE_USER_RESTRICTION"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_3

    :sswitch_9
    const-string/jumbo p1, "SET_CAMERA_DISABLED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p0, -0x1

    :goto_3
    packed-switch p0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7f724fa7 -> :sswitch_9
        -0x6700e06d -> :sswitch_8
        -0x5464d244 -> :sswitch_7
        -0x52e46b58 -> :sswitch_6
        -0x3666132a -> :sswitch_5
        -0x33cd1b9c -> :sswitch_4
        -0x1c5796ca -> :sswitch_3
        -0x55d6e65 -> :sswitch_2
        0xba64e33 -> :sswitch_1
        0x63bb0d3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized handleCountableEvents(ILandroid/os/Bundle;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/knox/JsonHelper;->getSavedEventDate(ILandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1, v1}, Lcom/android/server/knox/JsonHelper;->getEventEntrySize(ILandroid/content/SharedPreferences;)I

    move-result v3

    const-string/jumbo v4, "yyyy/MM/dd"

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->eventCountAndDayLimit:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v6, v5, v0

    if-ge v3, v6, :cond_0

    if-eqz v4, :cond_3

    invoke-static {v2, v4}, Lcom/android/server/knox/JsonHelper;->getDaysDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x1

    aget v4, v5, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/android/server/knox/JsonHelper;->getSavedEventsObject(ILandroid/content/SharedPreferences;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "saved_data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string/jumbo v6, "event_key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "eC"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->sendDPMEventLog(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/server/knox/JsonHelper;->eraseSavedEventData(ILandroid/content/SharedPreferences$Editor;)V

    :cond_3
    invoke-static {p1, p2}, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->generateEventKey(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {p1, p2, v1}, Lcom/android/server/knox/JsonHelper;->shallSaveOrReturnCount(ILjava/lang/String;Landroid/content/SharedPreferences;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_4
    monitor-exit p0

    return v0

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catch_2
    :try_start_3
    const-string p1, "DevicePolicyManagerAnalytics"

    const-string p2, "IllegalStateExcpetion. User may be in locked state."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final sendDPMEventLog(ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 9

    const-string/jumbo v0, "tpms"

    const-string/jumbo v1, "bV"

    const-string/jumbo v2, "iV"

    const-string v3, ";;"

    sget-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v6, "DPMS_API_USAGE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v6, "aN"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v6, "eC"

    invoke-virtual {v5, v6, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo p4, "info_level"

    const-string v6, "4"

    const-string/jumbo v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->oneUiAndOSVersion:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {v5, v2, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    invoke-virtual {v5, v1, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {v5, v0, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    sget-object p2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/4 v6, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "BIND_CROSS_PROFILE_SERVICE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo p2, "SET_APPLICATION_RESTRICTIONS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo p2, "SET_PERMISSION_GRANT_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_3
    const-string p2, "ADD_USER_RESTRICTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_1

    :sswitch_4
    const-string/jumbo p2, "SET_KEYGUARD_DISABLED_FEATURES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p4

    goto :goto_1

    :sswitch_5
    const-string/jumbo p2, "SET_APPLICATION_EXEMPTIONS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_6
    const-string p2, "ADD_CROSS_PROFILE_INTENT_FILTER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v7

    goto :goto_1

    :sswitch_7
    const-string p2, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_8
    const-string/jumbo p2, "REMOVE_USER_RESTRICTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :sswitch_9
    const-string/jumbo p2, "SET_CAMERA_DISABLED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string/jumbo p2, "apN"

    const-string/jumbo v8, "saV"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    :try_start_1
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, v2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, v7, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v8, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, v8, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, p4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v8, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, v2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, p4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v8, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v8, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f724fa7 -> :sswitch_9
        -0x6700e06d -> :sswitch_8
        -0x5464d244 -> :sswitch_7
        -0x52e46b58 -> :sswitch_6
        -0x3666132a -> :sswitch_5
        -0x33cd1b9c -> :sswitch_4
        -0x1c5796ca -> :sswitch_3
        -0x55d6e65 -> :sswitch_2
        0xba64e33 -> :sswitch_1
        0x63bb0d3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

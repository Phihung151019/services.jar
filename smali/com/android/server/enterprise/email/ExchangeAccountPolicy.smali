.class public final Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final mDeviceId:Ljava/util/HashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

.field public mRestartExtendDelay:Z

.field public mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field public preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v1, 0x1

    const-string v2, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :try_start_0
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    new-instance v5, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v5, v1, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v0, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo p1, "success to add receiver"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string/jumbo v0, "Regist BroadCast failed : "

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.email.provider"

    const-string/jumbo v4, "com.samsung.android.email.provider.exchange.ExchangeService"

    invoke-direct {p1, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const-string v0, "Enabling EAS ExchangeService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Component not found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public static getDefaultValueState$1(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "ReqSigSmime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "ReqEncryptSmime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ForceSmimeCert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "AllowSettingChange"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v0, "AllowNotificationChange"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "ForceSmimeCertForEncryption"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "ForceSmimeCertForSigning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "AttachmentEnable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDefaultValueState() : policy = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ret = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string/jumbo v0, "email_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ExchangeAccountPolicy"

    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 34

    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v22, 0x1e0

    const/16 v23, 0x3fc

    const/16 v24, 0x3e

    const/16 v25, -0x2

    const/16 v26, 0x0

    const/16 v27, 0x3

    const/16 v28, 0x4

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-virtual/range {v2 .. v33}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p13

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string/jumbo v4, "addNewAccount() EX : sent intent to Email app : "

    const-string/jumbo v5, "addNewAccount() EX : "

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    const-string v7, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    const-string v13, "ExchangeAccountPolicy"

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    iget v7, v6, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 p1, v11

    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 p2, v11

    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v17, -0x1

    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    if-nez v12, :cond_1

    :cond_0
    move-object v1, v13

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v10, "com.samsung.android.email.provider"

    invoke-static {v7, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v19

    move-object/from16 p3, v11

    const-string/jumbo v11, "com.samsung.android.focus"

    if-nez v19, :cond_2

    invoke-static {v7, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string/jumbo v0, "addNewAccount() EX : Error :: Email and Focus are not installed on user "

    invoke-static {v7, v0, v13}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v17

    :cond_2
    const/4 v7, 0x1

    if-ne v7, v1, :cond_3

    if-ne v7, v2, :cond_3

    const-string/jumbo v0, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_3
    move-object v7, v11

    const/4 v11, 0x1

    move-object/from16 v19, v8

    move-object v8, v12

    iget-object v12, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v10

    const-string/jumbo v10, "eas"

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v21, v4

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v19

    move-object/from16 v22, v20

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    invoke-static/range {v6 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v10

    const-wide/16 v19, 0x0

    cmp-long v10, v10, v19

    if-lez v10, :cond_4

    const-string/jumbo v0, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 p1, v10

    :try_start_1
    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v1, p31

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v1, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v1, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v24, v13

    :try_start_2
    const-string/jumbo v13, "eas"

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    move/from16 v8, p15

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    move/from16 v8, p16

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    move/from16 v8, p17

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    move/from16 v7, p20

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move/from16 v7, p21

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move/from16 v7, p22

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move/from16 v7, p7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move/from16 v7, p23

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move/from16 v7, p24

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move/from16 v7, p6

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra."

    move/from16 v7, p25

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move/from16 v7, p26

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move/from16 v7, p27

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move/from16 v7, p28

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move/from16 v7, p29

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    move/from16 v3, p13

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    move/from16 v3, p12

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move/from16 v3, p8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v3, p30

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v5, v16

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v7, v23

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, v24

    :try_start_3
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    move-object v1, v13

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 p1, v10

    goto :goto_4

    :catch_3
    move-exception v0

    move-wide/from16 p1, v10

    goto :goto_1

    :goto_2
    :try_start_4
    const-string/jumbo v2, "addNewAccount() EX : failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_3
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v19

    :goto_4
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_5
    const-string/jumbo v0, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17
.end method

.method public final addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string/jumbo v3, "addNewAccount() NEW : "

    const-string/jumbo v4, "addNewAccount_new : sent intent to Email app : "

    const-string/jumbo v5, "addNewAccount : alias has added, alias = "

    const-string/jumbo v6, "addNewAccount : Error :: certificate storage name "

    const-string/jumbo v7, "addNewAccount() New : "

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    iget v9, v8, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-wide/16 v16, -0x1

    const-string v10, "ExchangeAccountPolicy"

    if-nez v1, :cond_0

    const-string/jumbo v0, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_0
    iget-object v11, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v11, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 p1, v8

    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    iget-object v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v8, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    move-object/from16 v20, v11

    xor-int/lit8 v11, v8, 0x1

    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_2

    :cond_1
    move-object v4, v10

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v13, "com.samsung.android.email.provider"

    invoke-static {v9, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v21

    move-object/from16 v22, v13

    const-string/jumbo v13, "com.samsung.android.focus"

    if-nez v21, :cond_3

    invoke-static {v9, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string/jumbo v0, "addNewAccount() EX : Error :: Email and focus are not installed on user "

    invoke-static {v9, v0, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v16

    :cond_3
    move-object/from16 v21, v13

    const/4 v13, 0x1

    if-ne v13, v8, :cond_4

    if-ne v13, v11, :cond_4

    const-string/jumbo v0, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_4
    move v8, v13

    const/4 v13, 0x1

    move-object v11, v10

    move-object v10, v14

    iget-object v14, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v11

    move-object v11, v12

    const-string/jumbo v12, "eas"

    move-object/from16 v24, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v3

    move v3, v9

    move-object/from16 v9, v18

    move-object/from16 v25, v21

    move-object/from16 v18, v4

    move-object/from16 v21, v6

    move v6, v8

    move-object/from16 v4, v23

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v12

    const-wide/16 v26, 0x0

    cmp-long v9, v12, v26

    if-lez v9, :cond_5

    const-string/jumbo v0, "addNewAccount : Error :: Account already exists."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string/jumbo v7, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    sget v9, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v14, 0x11

    if-lt v9, v14, :cond_6

    iget v9, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    if-lt v9, v6, :cond_6

    const/4 v14, 0x3

    if-gt v9, v14, :cond_6

    move v7, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v28, v12

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-wide/from16 v28, v12

    goto/16 :goto_2

    :cond_6
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v14, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    move/from16 v23, v6

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    invoke-direct {v9, v8, v14, v6, v7}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3, v9}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    goto :goto_1

    :cond_7
    move/from16 v23, v6

    :goto_1
    invoke-virtual {v0, v8, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    iget-object v3, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v28, v12

    :try_start_1
    invoke-virtual {v0, v8, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v9, "eas"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra."

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    iget v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    iget-boolean v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v3, v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v16

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_8
    :try_start_2
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, v20

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v6, v19

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v1, v25

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v26

    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v26

    :goto_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_4
    const-string/jumbo v0, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v16
.end method

.method public final adminSatisfiesForceSMIMECertificateRules(IIJZ)Z
    .locals 14

    move/from16 v0, p2

    const-string v1, "ExchangeAccountTable"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "AccountId"

    const-string/jumbo v5, "adminUid"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p5, :cond_3

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "#SelectClause#"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ne v0, v3, :cond_0

    const-string v0, "(ForceSmimeCertForSigning=1 OR ForceSmimeCert=1)"

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const-string v0, "(ForceSmimeCertForEncryption=1 OR ForceSmimeCert=1)"

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "((ForceSmimeCertForEncryption=1 AND ForceSmimeCertForSigning=1) OR (ForceSmimeCert=1))"

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p1, :cond_2

    return v6

    :cond_2
    return v7

    :cond_3
    const-string v9, "ForceSmimeCert"

    const-string v10, "ForceSmimeCertForEncryption"

    const-string v11, "ForceSmimeCertForSigning"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v12, v13}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-ne v0, v3, :cond_6

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v7, :cond_5

    :cond_4
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_c

    :cond_5
    return v7

    :cond_6
    if-ne v0, v2, :cond_9

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v7, :cond_8

    :cond_7
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_c

    :cond_8
    return v7

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_a

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v7, :cond_b

    :cond_a
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_c

    :cond_b
    return v7

    :cond_c
    return v6
.end method

.method public final allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "allowEmailSettingsChange() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "allowEmailSettingsChange() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v7, "AllowSettingChange"

    move-object v2, p0

    move-wide v5, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "allowEmailSettingsChange() : = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , allow  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "allowInComingAttachments() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "allowInComingAttachments_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v7, "AttachmentEnable"

    move-object v2, p0

    move v8, p2

    move-wide v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result p0

    const-string/jumbo p1, "allowInComingAttachments() : = "

    const-string p2, " , enable  ="

    const-string p3, " , accId  ="

    invoke-static {p1, p0, p2, v8, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v5, v6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0
.end method

.method public final convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_3

    new-instance p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    return-object p3
.end method

.method public final createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 22

    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "addNewAccount() EX 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "2.5"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v16, p5

    move-object/from16 v20, p6

    invoke-virtual/range {v2 .. v21}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8

    const-string/jumbo v0, "deleteAccount() : accId = "

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v1, "deleteAccount() :"

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v1, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p0, "deleteAccount_new() : Not valid accId : "

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v3

    :cond_0
    iget-object v4, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iget-object v1, v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v5, :cond_2

    const-string/jumbo v6, "com.samsung.android.email"

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo p0, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v3

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , userId = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v0, v7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo p3, "eas"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.email.provider"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "deleteAccount() : failed. "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_1
    const-string/jumbo p0, "deleteAccount() : no Inforamtion for accId = "

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v3
.end method

.method public final enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPackageNameForUid :   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const-string/jumbo v4, "SettingsUtils"

    invoke-static {v2, v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    const-string p0, "Calling UID changed : "

    const-string v2, " callingUid "

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 4

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "C#"

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "getAccountCertificatePassword() failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "getAccountCertificatePassword() success"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAccountDetails() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,  userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 5

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "E#"

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "com.samsung.android.focus"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    move-object p3, p0

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p3

    goto :goto_0

    :catch_0
    :try_start_2
    const-string/jumbo p0, "SettingsUtils"

    const-string/jumbo p2, "getSecurityPasswordFocus() failed"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, p0

    goto :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo p2, "getAccountEmailPassword() failed"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p0, "getAccountEmailPassword() success"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    const-string/jumbo p1, "getAccountId() : "

    const-string v7, "ExchangeAccountPolicy"

    invoke-static {p1, p3, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "eas"

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getAccountId() : = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ,  easDomain = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", easUser = "

    const-string p4, ", activeSyncHost = "

    invoke-static {p2, p3, v2, p4, v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public final getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAllEASAccounts() : userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-wide v7, v3, v6

    invoke-static {v7, v8, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    add-int/lit8 v8, v5, 0x1

    aput-object v7, p0, v5

    move v5, v8

    goto :goto_1

    :cond_2
    move-object p0, p1

    :cond_3
    if-eqz p0, :cond_5

    array-length v1, p0

    :goto_2
    if-ge v4, v1, :cond_6

    aget-object v2, p0, v4

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "getAllEASAccounts_new( ): fail to get list."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/knox/accounts/Account;

    return-object p0

    :cond_7
    return-object p1
.end method

.method public final getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 13

    const-string/jumbo v0, "getDeviceId() : sendBroadcast "

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDeviceId() : userID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.android.email.provider"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "getDeviceId() failed : Email App is not installed. : com.samsung.android.email.provider"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "getDeviceId() failed : Email App is disabled. : com.samsung.android.email.provider"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    const/4 v5, 0x0

    invoke-direct {v6, v5, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.email.provider"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    :goto_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_4
    const-string v1, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getDeviceId() Inturrupted."

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :goto_5
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "getDeviceId() : failed. "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_7
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    sget-object p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :goto_8
    :try_start_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method public final getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "IncomingAttachmentSize"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string/jumbo v5, "MaxCalendarAgeFilter"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string/jumbo v5, "MaxEmailAgeFilter"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string/jumbo v5, "MaxEmailBodyTruncationSize"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string/jumbo v5, "MaxEmailHTMLBodyTruncationSize"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPolicyState(IIJLjava/lang/String;)Z
    .locals 6

    const-string v0, "ExchangeAccountPolicy"

    invoke-static {p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState$1(Ljava/lang/String;)Z

    move-result v1

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "containerID"

    const-string/jumbo v5, "userID"

    invoke-static {p1, v3, v4, p2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AccountId"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, ", container id = "

    const-string v5, ", user id = "

    if-eqz v3, :cond_0

    const-string/jumbo p0, "getPolicyState() : results is default value(null), accId = "

    invoke-static {p2, p0, p3, p4, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPolicyState() : results = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", accId = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState$1(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p1, p0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :cond_1
    if-ge p3, p2, :cond_3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    check-cast p4, Landroid/content/ContentValues;

    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p0, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string/jumbo p0, "getPolicyState: restricted. "

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_3
    const-string/jumbo p1, "getPolicyState: no restrictData. "

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final getPolicyStateasInteger(IIJLjava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "getPolicyStateasInteger() : results = "

    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "MaxCalendarAgeFilter"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "MaxEmailAgeFilter"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    const-string/jumbo v1, "getDefaultValueStateInteger() : policy = "

    const-string v2, " ret = 0"

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v1, p5, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "containerID"

    const-string/jumbo v5, "userID"

    invoke-static {p1, v2, v4, p2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AccountId"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ExchangeAccountTable"

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", accId = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", user id = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", container id = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const p1, 0x7fffffff

    move p2, p1

    move p3, v4

    :cond_5
    :goto_1
    if-ge p3, p0, :cond_6

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    check-cast p4, Landroid/content/ContentValues;

    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p2, :cond_5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_6
    if-eq p2, p1, :cond_7

    move v4, p2

    :cond_7
    const-string/jumbo p0, "getPolicyStateasInteger() : result = "

    invoke-static {v4, p0, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_0
    move-exception p0

    const-string/jumbo p1, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public final getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "ReqEncryptSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v5, "ReqSigSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    const-string v1, "ExchangeAccountPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "getSMIMECertificateAlias() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-object v2

    :cond_0
    if-nez p4, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string/jumbo p1, "getSMIMECertificateAlias() : failed. "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string/jumbo p0, "getSMIMECertificateAlias() : accId = "

    const-string p1, ", type = "

    invoke-static {p4, p0, p2, p3, p1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", ret = "

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "AllowNotificationChange"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "AllowSettingChange"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    const-string v5, "AttachmentEnable"

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IIJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 11

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "AccountId"

    const-string v2, "ForceSmimeCert"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v5, "adminUid"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ExchangeAccountTable"

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const-string v5, "ExchangeAccountPolicy"

    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendReleaseSMIMECertificate() : accId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", containerId = 0, userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v5, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    const-string/jumbo p0, "onPreAdminRemoval() : "

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final putPolicyState(IIJLjava/lang/String;Z)Z
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    const-string/jumbo v2, "containerID"

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p6, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v0, p5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, v3, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , state  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final putPolicyState(IILjava/lang/String;IJ)Z
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    const-string/jumbo v2, "containerID"

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, v3, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "putPolicyState: ret = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , value  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , policy ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExchangeAccountPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removePendingAccount() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v5, "eas"

    invoke-virtual {v1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo p2, "com.samsung.android.email.provider"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v1, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .locals 9

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string/jumbo v4, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    const-string v6, ", userId = "

    const-string v7, ", containerId = "

    const-string v8, "ExchangeAccountPolicy"

    if-ne p5, v2, :cond_0

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "ForceSmimeCertForEncryption"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_1

    const-string/jumbo p5, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-static {v0, p5, p2, p3, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v8, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Landroid/content/Intent;

    const-string/jumbo p6, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    iget-object p6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p6, p5, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    const/4 v2, 0x3

    if-ne p5, v2, :cond_3

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "ForceSmimeCertForSigning"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p6, :cond_1

    const-string/jumbo p5, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-static {v0, p5, p2, p3, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v8, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Landroid/content/Intent;

    const-string/jumbo p6, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-direct {p5, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1
    iget-object p6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p6, p5, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p5, "adminUid"

    invoke-virtual {p4, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "AccountId"

    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "ExchangeAccountTable"

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v3

    :cond_3
    const-string/jumbo p0, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-static {p5, p0, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    iget-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ExchangeAccountPolicy"

    if-nez p1, :cond_0

    :try_start_1
    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    const-wide/16 v4, 0x3a98

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setAcceptAllCertificates() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public final setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p0, "ExchangeAccountPolicy"

    const-string/jumbo p1, "setAccountBaseParameters() : deprecated "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 5

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "C#"

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-wide/16 v2, -0x1

    if-nez p2, :cond_0

    return-wide v2

    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p2, "setAccountCertificatePassword() success"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setAccountCertificatePassword() failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2
.end method

.method public final setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 6

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "E#"

    invoke-virtual {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM$13()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide p0

    const-wide/16 v2, -0x1

    if-nez p2, :cond_0

    return-wide v2

    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SettingsUtils"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo p2, "setSecurityPasswordFocus() success"

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    const-string/jumbo p2, "setSecurityPasswordFocus() failed"

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "setSecurityPasswordFocus() failed : invalid parameter"

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const-string/jumbo p2, "setAccountEmailPassword() success"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "setAccountEmailPassword() failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2
.end method

.method public final setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAccountName() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string/jumbo p0, "setAccountName() : accountName is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo p0, "setAccountName_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAccountName() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", accountName ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , accId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0
.end method

.method public final setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setAlwaysVibrateOnEmailNotification() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public final setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setAsDefaultAccount() :  "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setAsDefaultAccount_new() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAsDefaultAccount() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , accId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setClientAuthCert() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "setClientAuthCert() : No exist accId : "

    invoke-static {p0, p4, p5, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const-wide/16 v2, 0x1

    cmp-long v2, p4, v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v5

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v4, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p0, v4, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "setClientAuthCert() : failed"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_1
    const-string/jumbo p0, "setClientAuthCert() : error : "

    invoke-static {p0, p4, p5, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setDataSyncs() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p6, p7, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p6, p7, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    invoke-static {p0, p6, p7, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean p5, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    const-string/jumbo p1, "setDataSyncs() : = "

    const-string p4, " ,  syncCalendar = "

    const-string p5, ", syncContacts = "

    invoke-static {p1, p0, p4, p2, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", accid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setEmailNotificationsState() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "allowInComingAttachments() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v7, "AllowNotificationChange"

    move-object v2, p0

    move-wide v5, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setEmailNotificationsState() : = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , accId  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , enable  ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    const-string/jumbo v9, "S"

    const-string/jumbo v10, "setForceSMIMECertificateAlias() : storage name "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setForceSMIMECertificateAlias() : accId = "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "ExchangeAccountPolicy"

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-static {v1, v6, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v11, v3, v4, v12}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    invoke-virtual {v0, v13, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    const/4 v1, 0x1

    const/4 v15, 0x0

    if-eq v8, v1, :cond_1

    if-eqz v8, :cond_1

    const-string/jumbo v0, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-static {v8, v0, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v15

    :cond_1
    invoke-virtual {v0, v13, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-static {v0, v3, v4, v12}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v15

    :cond_2
    if-nez v8, :cond_3

    const/4 v2, 0x2

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :goto_1
    iget v1, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v5, v15

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIJZ)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : either a smime certificate has already been enforced on this user by other admin or admin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v7, :cond_7

    :try_start_0
    invoke-virtual {v0, v13, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-wide/from16 v16, v1

    goto :goto_6

    :cond_6
    :goto_3
    move-wide/from16 v16, v1

    goto :goto_4

    :cond_7
    move-object v5, v7

    goto :goto_3

    :goto_4
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v1

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v7, v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

    invoke-virtual {v7, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    invoke-virtual {v7, v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_5
    new-instance v6, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/4 v8, 0x0

    const/4 v10, -0x1

    invoke-direct {v6, v13, v5, v8, v10}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v0, v7, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v1

    goto :goto_7

    :goto_6
    :try_start_2
    const-string/jumbo v1, "setForceSMIMECertificateAlias() : failed. "

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :goto_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v0, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const-string/jumbo v9, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    const-string/jumbo v10, "S"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    invoke-virtual {v1, v11, v4, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    const/4 v13, 0x3

    if-nez v3, :cond_0

    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-static {v1, v4, v5, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v13

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/16 v16, 0x1

    goto/16 :goto_8

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/16 v17, 0x2

    goto/16 :goto_7

    :cond_4
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v13

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    :goto_0
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIJZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : a smime certificate has already been enforced on this user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v11, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v13

    move/from16 v16, v2

    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v2

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x2

    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v6, v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

    invoke-virtual {v6, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    invoke-virtual {v6, v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v15, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v18, v13

    :try_start_2
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v12}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v12, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v15, v6, v13, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_8

    move/from16 v8, v16

    goto :goto_1

    :cond_8
    const-string/jumbo v12, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move/from16 v8, v17

    goto :goto_1

    :cond_9
    const-string/jumbo v12, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x3

    goto :goto_1

    :cond_a
    move v8, v13

    :goto_1
    invoke-direct {v6, v11, v0, v7, v8}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v0

    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_b

    move v3, v13

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    :goto_2
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide/from16 v18, v13

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v18, v13

    :goto_3
    :try_start_4
    const-string v2, "ExchangeAccountPolicy"

    const-string/jumbo v3, "setForceSMIMECertificateInternal() : failed. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    :goto_4
    monitor-exit p0

    return v3

    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :goto_7
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPassword is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :goto_8
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16
.end method

.method public final setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setIncomingAttachmentsSize() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v0

    :cond_0
    if-gez p2, :cond_1

    const-string/jumbo p0, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v5, "IncomingAttachmentSize"

    move-object v2, p0

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    move-result p0

    const-string/jumbo p1, "setIncomingAttachmentsSize() : = "

    const-string p2, " , size  ="

    const-string p3, " , accId  ="

    invoke-static {v6, p1, p2, p3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v7, v8, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0
.end method

.method public final setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setMaxCalendarAgeFilter() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v9

    :cond_0
    const/4 v2, 0x4

    if-lt p2, v2, :cond_1

    const/4 v2, 0x7

    if-le p2, v2, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    const-string/jumbo v5, "MaxCalendarAgeFilter"

    move-object v2, p0

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p0

    iget p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    if-le p2, p0, :cond_4

    if-eqz p0, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p0, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iget-object p0, v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "ExchangeAccountPolicy"

    if-nez v7, :cond_0

    const-string/jumbo p0, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-static {p0, p3, p4, v9}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v8

    :cond_0
    if-ltz p2, :cond_4

    const/4 v0, 0x5

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "MaxEmailAgeFilter"

    move-object v0, p0

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p0

    iget p2, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    if-le p2, p0, :cond_3

    if-eqz p0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p0, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    iget-object p0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const-string/jumbo p0, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public final setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v9

    :cond_0
    if-gez p2, :cond_1

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    const-string/jumbo v5, "MaxEmailBodyTruncationSize"

    move-object v2, p0

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p0

    iget-object p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p0, :cond_4

    iget p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    if-eqz p2, :cond_3

    mul-int/lit16 p3, p0, 0x400

    if-le p2, p3, :cond_4

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p0, p0, 0x400

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p0, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    iget-object p0, v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    const-string/jumbo p0, "setMaxEmailBodyTruncationSize() : updated account."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo p0, "setMaxEmailBodyTruncationSize()  = true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setMaxEmailHTMLBodyTruncationSize() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v9

    :cond_0
    if-gez p2, :cond_1

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    const-string/jumbo v5, "MaxEmailHTMLBodyTruncationSize"

    move-object v2, p0

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IILjava/lang/String;IJ)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result p0

    iget-object p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p2

    iget-boolean p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    iget p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    if-eqz p2, :cond_3

    mul-int/lit16 p3, p0, 0x400

    if-le p2, p3, :cond_4

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p0, p0, 0x400

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p0, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    iget-object p0, v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize() : updated account."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo p0, "setMaxEmailHTMLBodyTruncationSize()  = true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPassword() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string/jumbo p0, "setPassword() : Invalid input parameter."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo p0, "setPassword_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public final setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setPastDaysToSync() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-gt v0, p2, :cond_2

    const/4 v0, 0x6

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "setPastDaysToSync_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v2

    :cond_1
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    const-string/jumbo p1, "setPastDaysToSync() = "

    const-string v0, " , pastDaysToSync = "

    const-string v2, " , accId = "

    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0

    :cond_2
    :goto_0
    const-string/jumbo p0, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public final setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public final setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public final setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result p0

    return p0
.end method

.method public final setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z
    .locals 10

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    const-string v7, "ExchangeAccountPolicy"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setReleaseSMIMECertificateInternal() : No exist accId : "

    invoke-static {p0, p2, p3, v7}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v8

    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IIJZ)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setReleaseSMIMECertificateInternal() : admin "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const/4 v9, 0x1

    if-eq p4, v9, :cond_3

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    move v4, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x2

    move v4, v6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v8

    const-string/jumbo p1, "setReleaseSMIMECertificateInternal() : release SMIME Encryption = "

    invoke-static {p1, v7, v8}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-eq p4, v9, :cond_5

    const/4 p1, 0x3

    if-ne p4, p1, :cond_4

    goto :goto_2

    :cond_4
    return v8

    :cond_5
    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result p0

    const-string/jumbo p1, "setReleaseSMIMECertificateInternal() : release SMIME Signing = "

    invoke-static {p1, v7, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setRequireEncryptedSMIMEMessages () : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v7, "ReqEncryptSmime"

    move-object v2, p0

    move-wide v5, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p1, "setRequireEncryptedSMIMEMessages() : failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setRequireSignedSMIMEMessages() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-static {p0, p2, p3, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v7, "ReqSigSmime"

    move-object v2, p0

    move-wide v5, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p1, "setRequireSignedSMIMEMessages() : failed."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setSSL() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public final setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setSenderName() :  deprecated , "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setSignature() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string/jumbo p0, "setSignature() : signature is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p3, p4, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo p0, "setSignature_new() : No exist accId : "

    invoke-static {p0, p3, p4, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v0

    :cond_1
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    return p0
.end method

.method public final setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setSyncInterval() : deprecated , "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExchangeAccountPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 3

    const-string/jumbo v0, "setSyncPeakTimings() : "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-ltz p2, :cond_6

    const/16 v2, 0x7f

    if-le p2, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p3, :cond_5

    const/16 v2, 0x5a0

    if-le p3, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p4, :cond_4

    if-le p4, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo p0, "setSSL_new() : No exist accId : "

    invoke-static {p0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return v0

    :cond_3
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput p3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput p4, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    const-string/jumbo p1, "setSyncPeakTimings() = "

    const-string v0, " , peakDays ="

    const-string v2, ", mPeakStartMinute = "

    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", peakEndMinute = "

    const-string v0, ", accid = "

    invoke-static {p3, p4, p2, v0, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p1, p5, p6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0

    :cond_4
    :goto_0
    const-string/jumbo p0, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_1
    const-string/jumbo p0, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    :goto_2
    const-string/jumbo p0, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "setSyncSchedules() :  "

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSyncSchedules_new() : No exist accId : "

    invoke-static {p0, p5, p6, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput p3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput p4, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result p0

    const-string/jumbo p1, "setSyncSchedules() : = "

    const-string v0, " ,  peakSyncSchedule = "

    const-string v2, ", offPeakSyncSchedule = "

    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", roamingSyncSchedule = "

    const-string v0, ", accid = "

    invoke-static {p3, p4, p2, v0, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p1, p5, p6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return p0
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

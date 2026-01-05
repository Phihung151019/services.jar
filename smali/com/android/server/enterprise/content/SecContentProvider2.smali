.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "ApplicationPolicy"

    const/4 v2, 0x1

    const-string/jumbo v3, "com.sec.knox.provider2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DeviceAccountPolicy"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EmailPolicy"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EmailAccountPolicy"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseDeviceManager"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ExchangeAccountPolicy"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KioskMode"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxCustomManagerService1"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxCustomManagerService2"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "MiscPolicy"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "MultiUserManager"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "PhoneRestrictionPolicy"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "vpnPolicy"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "WifiPolicy"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseLicenseService"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxMUMContainerPolicy"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method

.method public static populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;
    .locals 1

    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string/jumbo v3, "device_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "isAccountAdditionAllowed"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "isAccountRemovalAllowedAsUser"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "isAccountRemovalAllowed"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v0, p1, v0

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_1
    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    goto :goto_1

    :cond_4
    aget-object v0, p1, v0

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v4, :cond_5

    goto :goto_1

    :cond_5
    aget-object v0, p1, v0

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7117b61 -> :sswitch_2
        0x1562409c -> :sswitch_1
        0x4fb7d6e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static queryEmailAccount(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const-string/jumbo v0, "email_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "getSecurityOutgoingServerPassword"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "getSecurityIncomingServerPassword"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "isServiceAvailable"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "SecContentProvider2"

    const-string p1, "ENTERPRISELICENSEPOLICY : return null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object p1, p1, v3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static queryMisc(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v1, "getCurrentLockScreenString"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo p0, "isNFCStateChangeAllowed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryMultiUser(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "multipleUsersSupported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryMumContainer(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v1, 0x0

    const-string/jumbo v2, "SecContentProvider2"

    if-nez v0, :cond_0

    const-string/jumbo p0, "container policy is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "isNFCEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo p0, "queryMumContainer - no selection found!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0
.end method

.method public static queryPhoneRestriction(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string/jumbo v2, "getDisclaimerText"

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string/jumbo v8, "isMmsAllowedFromSimSlot(0) result "

    const-string/jumbo v9, "isMmsAllowedFromSimSlot(1) result "

    const-string/jumbo v10, "isDataAllowedFromSimSlot(0) result "

    const-string/jumbo v11, "isDataAllowedFromSimSlot(1) result "

    const-string/jumbo v12, "phone_restriction_policy"

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v13, 0x0

    if-eqz v12, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v14, "SecurityException: "

    const-string/jumbo v15, "SecContentProvider2"

    const/16 v16, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    const/16 v17, 0x2

    goto/16 :goto_0

    :sswitch_0
    const/16 v17, 0x2

    const-string/jumbo v4, "checkEnableUseOfPacketData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v16, 0xb

    goto/16 :goto_0

    :sswitch_1
    const/16 v17, 0x2

    const-string/jumbo v4, "isSimLockedByAdmin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0xa

    goto/16 :goto_0

    :sswitch_2
    const/16 v17, 0x2

    const-string/jumbo v4, "isDataAllowedFromSimSlot2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x9

    goto/16 :goto_0

    :sswitch_3
    const/16 v17, 0x2

    const-string/jumbo v4, "isDataAllowedFromSimSlot1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x8

    goto/16 :goto_0

    :sswitch_4
    const/16 v17, 0x2

    const-string/jumbo v4, "isMmsAllowedFromSimSlot2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x7

    goto/16 :goto_0

    :sswitch_5
    const/16 v17, 0x2

    const-string/jumbo v4, "isMmsAllowedFromSimSlot1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v16, v7

    goto :goto_0

    :sswitch_6
    const/16 v17, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v16, 0x5

    goto :goto_0

    :sswitch_7
    const/16 v17, 0x2

    const-string/jumbo v4, "isCopyContactToSimAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v16, 0x4

    goto :goto_0

    :sswitch_8
    const/16 v17, 0x2

    const-string/jumbo v4, "isIncomingMmsAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v16, v3

    goto :goto_0

    :sswitch_9
    const/16 v17, 0x2

    const-string/jumbo v4, "isRCSEnabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v16, v17

    goto :goto_0

    :sswitch_a
    const/16 v17, 0x2

    const-string/jumbo v4, "getEmergencyCallOnly"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v16, v5

    goto :goto_0

    :sswitch_b
    const/16 v17, 0x2

    const-string/jumbo v4, "isOutgoingMmsAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v16, v6

    :goto_0
    packed-switch v16, :pswitch_data_0

    const-string/jumbo v0, "return null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_0
    if-eqz p2, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_c

    aget-object v0, p2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_c
    invoke-virtual {v12, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    if-eqz p2, :cond_10

    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d

    goto/16 :goto_6

    :cond_d
    aget-object v0, p2, v6

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_2
    :try_start_0
    invoke-virtual {v12, v5, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_3
    :try_start_1
    invoke-virtual {v12, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_5

    :pswitch_4
    :try_start_2
    invoke-virtual {v12, v7, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_5

    :pswitch_5
    :try_start_3
    invoke-virtual {v12, v7, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_7
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isCopyContactToSimAllowed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_8
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "allowIncomingMms"

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_10

    if-ge v2, v3, :cond_e

    goto :goto_6

    :cond_e
    aget-object v2, p2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    aget-object v4, p2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v5, "enableRCS"

    invoke-virtual {v12, v2, v5, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v5, v2, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v5

    :cond_f
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v2, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :cond_10
    :goto_6
    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b848555 -> :sswitch_b
        -0x45f6c0db -> :sswitch_a
        -0x36ade6b7 -> :sswitch_9
        -0xb24e11b -> :sswitch_8
        0x1134efad -> :sswitch_7
        0x174ab65e -> :sswitch_6
        0x2ef792e5 -> :sswitch_5
        0x2ef792e6 -> :sswitch_4
        0x30fbd25a -> :sswitch_3
        0x30fbd25b -> :sswitch_2
        0x617af081 -> :sswitch_1
        0x7be8d885 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static queryVPN(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "vpn_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "isUserChangeProfilesAllowed"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "isUserSetAlwaysOnAllowed"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "isUserAddProfilesAllowed"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_1
    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_4

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eqz p2, :cond_5

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20e4e472 -> :sswitch_2
        0x528665ad -> :sswitch_1
        0x75693779 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 p2, 0x12

    if-eq v1, p2, :cond_2

    const/16 p2, 0xe

    const-string/jumbo v0, "SecContentProvider2"

    if-eq v1, p2, :cond_1

    const/16 p2, 0xf

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo p0, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo p0, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "eas_account_policy"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz p0, :cond_4

    const-string p1, "API"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v1, "setAccountEmailPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    :cond_4
    :goto_0
    return-object v3
.end method

.method public final onCreate()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "getKioskHomePackage"

    const-string/jumbo v5, "getUltraPowerSavingPackages"

    const/16 v16, 0x8

    const/4 v6, 0x7

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/16 v19, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "query(), uri = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v14, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " selection = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "SecContentProvider2"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "fail to get caller name"

    :cond_0
    const-string/jumbo v9, "called from "

    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string/jumbo v9, "return null"

    const/4 v13, 0x0

    if-eq v1, v11, :cond_86

    if-eq v1, v8, :cond_85

    if-eq v1, v7, :cond_77

    if-eq v1, v6, :cond_76

    const-string/jumbo v14, "knoxcustom"

    const-string v6, "Failed talking with KnoxCustomManager service"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_51

    :pswitch_0
    invoke-static {v12, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMumContainer(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static/range {p3 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move/from16 v17, v19

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "isWifiScanningAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "getPromptCredentialsEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v17, v18

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "getAllowUserPolicyChanges"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v17, v8

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "getPasswordHidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v17, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "isEnterpriseNetwork"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v17, v11

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "isWifiStateChangeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v17, v10

    :cond_6
    :goto_1
    packed-switch v17, :pswitch_data_1

    goto/16 :goto_51

    :pswitch_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_7
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7

    goto/16 :goto_51

    :cond_7
    aget-object v1, v3, v10

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "networkSSID"

    const-string/jumbo v4, "WIFI_CONF"

    invoke-virtual {v0, v10, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {v2, v12, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryVPN(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {v2, v12, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryPhoneRestriction(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {v12, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMultiUser(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {v12, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMisc(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v1, :cond_8

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_8
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-eqz v0, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    move/from16 v1, v19

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v1, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v1, 0x1d

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v1, "getVolumeButtonRotationState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v1, 0x1c

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v1, "getSettingsEnabledItems"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v1, 0x1b

    goto/16 :goto_3

    :sswitch_9
    const-string/jumbo v1, "getLoadingLogoPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v1, 0x1a

    goto/16 :goto_3

    :sswitch_a
    const-string/jumbo v1, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v1, 0x19

    goto/16 :goto_3

    :sswitch_b
    const-string/jumbo v1, "getToastGravityYOffset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/16 v1, 0x18

    goto/16 :goto_3

    :sswitch_c
    const-string/jumbo v1, "getToastShowPackageNameState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const/16 v1, 0x17

    goto/16 :goto_3

    :sswitch_d
    const-string/jumbo v1, "getToastGravity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/16 v1, 0x16

    goto/16 :goto_3

    :sswitch_e
    const-string/jumbo v1, "getSealedHardKeyIntentState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    const/16 v1, 0x15

    goto/16 :goto_3

    :sswitch_f
    const-string/jumbo v1, "getUsbConnectionTypeInternal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v1, 0x14

    goto/16 :goto_3

    :sswitch_10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v1, 0x13

    goto/16 :goto_3

    :sswitch_11
    const-string/jumbo v1, "getToastEnabledState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x12

    goto/16 :goto_3

    :sswitch_12
    const-string/jumbo v1, "getAppBlockDownloadState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v1, 0x11

    goto/16 :goto_3

    :sswitch_13
    const-string/jumbo v1, "getToastGravityXOffset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v1, 0x10

    goto/16 :goto_3

    :sswitch_14
    const-string/jumbo v1, "getAutoCallNumberDelay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_3

    :sswitch_15
    const-string/jumbo v1, "getUsbConnectionType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_16
    const-string/jumbo v1, "getAppBlockDownloadNamespaces"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_17
    const-string/jumbo v1, "isDexAutoOpenLastApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_18
    const-string/jumbo v1, "getToastGravityEnabledState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_19
    const-string/jumbo v1, "getAutoCallPickupState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_1a
    const-string/jumbo v1, "getAutoCallNumberAnswerMode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_1b
    const-string/jumbo v1, "getEthernetConfigurationType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_2

    :cond_1e
    move/from16 v1, v16

    goto/16 :goto_3

    :sswitch_1c
    const-string/jumbo v1, "getSealedVolumeKeyAppsList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_1d
    const-string/jumbo v1, "getSealedVolumeKeyAppState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_2

    :cond_20
    move v1, v7

    goto :goto_3

    :sswitch_1e
    const-string/jumbo v1, "getLockScreenHiddenItems"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_2

    :cond_21
    move/from16 v1, v17

    goto :goto_3

    :sswitch_1f
    const-string/jumbo v1, "getAirGestureOptionState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_2

    :cond_22
    move/from16 v1, v18

    goto :goto_3

    :sswitch_20
    const-string/jumbo v1, "getEthernetState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_2

    :cond_23
    move v1, v8

    goto :goto_3

    :sswitch_21
    const-string/jumbo v1, "getAutoCallNumberList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_2

    :cond_24
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_22
    const-string/jumbo v1, "getDexHDMIAutoEnter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_2

    :cond_25
    move v1, v11

    goto :goto_3

    :sswitch_23
    const-string/jumbo v1, "getGearNotificationState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_2

    :cond_26
    move v1, v10

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto/16 :goto_51

    :pswitch_e
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_f
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_10
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_11
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_12
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_13
    :try_start_5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v10
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_14
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v10
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_15
    :try_start_7
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v10
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_16
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v10
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_17
    :try_start_9
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v10
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_18
    :try_start_a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v13
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_29

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_19
    :try_start_b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v11
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_1a
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v10
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_11

    :catch_c
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_1b
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v10
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_12

    :catch_d
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_1c
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_27

    goto/16 :goto_51

    :cond_27
    :try_start_e
    aget-object v1, v3, v10

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v19
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_1d
    :try_start_f
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v10
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_1e
    :try_start_10
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v13
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_29

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_16

    :pswitch_1f
    :try_start_11
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v19
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_20
    :try_start_12
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v10
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_21
    :try_start_13
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v19
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_22
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_28

    goto/16 :goto_51

    :cond_28
    :try_start_14
    aget-object v1, v3, v10

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v19
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_23
    :try_start_15
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v10
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_24
    :try_start_16
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v13
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_29

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1d

    :pswitch_25
    :try_start_17
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v10
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_1e

    :catch_17
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_26

    :pswitch_26
    :try_start_18
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v10
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_1f

    :catch_18
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_26

    :pswitch_27
    :try_start_19
    invoke-interface {v0, v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v11
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_20

    :catch_19
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_26

    :pswitch_28
    :try_start_1a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v11
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_26

    :pswitch_29
    :try_start_1b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v13
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_22

    :catch_1b
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_29

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    :pswitch_2a
    :try_start_1c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v19
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_26

    :pswitch_2b
    :try_start_1d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v11
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_29
    :goto_26
    return-object v0

    :pswitch_2c
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v1, :cond_2a

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_2a
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-eqz v1, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :goto_27
    move/from16 v8, v19

    goto/16 :goto_28

    :sswitch_24
    const-string/jumbo v3, "getPowerMenuLockedState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_27

    :cond_2b
    const/16 v8, 0x10

    goto/16 :goto_28

    :sswitch_25
    const-string/jumbo v3, "getVolumePanelEnabledState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_27

    :cond_2c
    const/16 v8, 0xf

    goto/16 :goto_28

    :sswitch_26
    const-string/jumbo v3, "getStatusBarTextSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_27

    :cond_2d
    const/16 v8, 0xe

    goto/16 :goto_28

    :sswitch_27
    const-string/jumbo v3, "getLTESettingState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_27

    :cond_2e
    const/16 v8, 0xd

    goto/16 :goto_28

    :sswitch_28
    const-string/jumbo v3, "getScreenWakeupOnPowerState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_27

    :cond_2f
    const/16 v8, 0xc

    goto/16 :goto_28

    :sswitch_29
    const-string/jumbo v3, "getVolumeControlStream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_27

    :cond_30
    const/16 v8, 0xb

    goto/16 :goto_28

    :sswitch_2a
    const-string/jumbo v3, "getStatusBarText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_27

    :cond_31
    const/16 v8, 0xa

    goto/16 :goto_28

    :sswitch_2b
    const-string/jumbo v3, "getSealedUsbMassStorageState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_27

    :cond_32
    const/16 v8, 0x9

    goto/16 :goto_28

    :sswitch_2c
    const-string/jumbo v3, "getPowerSavingMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_27

    :cond_33
    move/from16 v8, v16

    goto/16 :goto_28

    :sswitch_2d
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_27

    :cond_34
    const/4 v8, 0x7

    goto :goto_28

    :sswitch_2e
    const-string/jumbo v3, "getTorchOnVolumeButtonsState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_27

    :cond_35
    move v8, v7

    goto :goto_28

    :sswitch_2f
    const-string/jumbo v3, "getInfraredState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_27

    :cond_36
    move/from16 v8, v17

    goto :goto_28

    :sswitch_30
    const-string/jumbo v3, "getStatusBarTextStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_27

    :cond_37
    move/from16 v8, v18

    goto :goto_28

    :sswitch_31
    const-string/jumbo v3, "getCallScreenDisabledItems"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_27

    :sswitch_32
    const-string/jumbo v3, "getSensorDisabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_27

    :cond_38
    const/4 v8, 0x2

    goto :goto_28

    :sswitch_33
    const-string/jumbo v3, "getSealedState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_27

    :cond_39
    move v8, v11

    goto :goto_28

    :sswitch_34
    const-string/jumbo v3, "getChargingLEDState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_27

    :cond_3a
    move v8, v10

    :cond_3b
    :goto_28
    packed-switch v8, :pswitch_data_3

    goto/16 :goto_51

    :pswitch_2d
    :try_start_1e
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v11
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_39

    :pswitch_2e
    :try_start_1f
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v11
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_2a

    :catch_1f
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_39

    :pswitch_2f
    :try_start_20
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v10
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_2b

    :catch_20
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_39

    :pswitch_30
    :try_start_21
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v10
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_39

    :pswitch_31
    :try_start_22
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v11
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_2d

    :catch_22
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_39

    :pswitch_32
    :try_start_23
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v10
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_2e

    :catch_23
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_39

    :pswitch_33
    :try_start_24
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v13
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_2f

    :catch_24
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_39

    :pswitch_34
    :try_start_25
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v11
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_30

    :catch_25
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_39

    :pswitch_35
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v1, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v9, 0x2

    goto :goto_31

    :cond_3c
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3d

    move v9, v10

    goto :goto_31

    :cond_3d
    move v9, v11

    :goto_31
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_36
    :try_start_26
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v13
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_32

    :catch_26
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_3f

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_33

    :pswitch_37
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "torchlight_enable"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3e

    move v10, v11

    :cond_3e
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_38
    :try_start_27
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v11
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_34

    :catch_27
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    invoke-static {v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_39

    :pswitch_39
    :try_start_28
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v10
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_35

    :catch_28
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_39

    :pswitch_3a
    :try_start_29
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v10
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_36

    :catch_29
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_39

    :pswitch_3b
    :try_start_2a
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v10
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_37

    :catch_2a
    move-exception v0

    invoke-static {v15, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_39

    :pswitch_3c
    :try_start_2b
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v10
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_38

    :catch_2b
    move-exception v0

    const-string v1, "Failed talking with knoxCustomManager service"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_3f
    :goto_39
    return-object v0

    :pswitch_3d
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_indicator_charing"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_40

    move v10, v11

    :cond_40
    invoke-static {v2, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_3a

    :sswitch_35
    const-string/jumbo v1, "isNightClockAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto/16 :goto_3a

    :cond_41
    const/16 v19, 0xc

    goto/16 :goto_3a

    :sswitch_36
    const-string/jumbo v1, "isInformationStreamAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_3a

    :cond_42
    const/16 v19, 0xb

    goto/16 :goto_3a

    :sswitch_37
    const-string/jumbo v1, "isAirCommandModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_3a

    :cond_43
    const/16 v19, 0xa

    goto/16 :goto_3a

    :sswitch_38
    const-string/jumbo v1, "isAppsEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_3a

    :cond_44
    const/16 v19, 0x9

    goto/16 :goto_3a

    :sswitch_39
    const-string/jumbo v1, "isNavigationBarHidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto/16 :goto_3a

    :cond_45
    move/from16 v19, v16

    goto/16 :goto_3a

    :sswitch_3a
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_3a

    :cond_46
    const/16 v19, 0x7

    goto :goto_3a

    :sswitch_3b
    const-string/jumbo v1, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_3a

    :cond_47
    move/from16 v19, v7

    goto :goto_3a

    :sswitch_3c
    const-string/jumbo v1, "isAirViewModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_3a

    :cond_48
    move/from16 v19, v17

    goto :goto_3a

    :sswitch_3d
    const-string/jumbo v1, "isMultiWindowModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_3a

    :cond_49
    move/from16 v19, v18

    goto :goto_3a

    :sswitch_3e
    const-string/jumbo v1, "isKioskModeEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_3a

    :cond_4a
    move/from16 v19, v8

    goto :goto_3a

    :sswitch_3f
    const-string/jumbo v1, "isPeopleEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_3a

    :cond_4b
    const/16 v19, 0x2

    goto :goto_3a

    :sswitch_40
    const-string/jumbo v1, "isEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_3a

    :cond_4c
    move/from16 v19, v11

    goto :goto_3a

    :sswitch_41
    const-string/jumbo v1, "isEdgeLightingAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_3a

    :cond_4d
    move/from16 v19, v10

    :goto_3a
    packed-switch v19, :pswitch_data_4

    goto/16 :goto_51

    :pswitch_3f
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_40
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_41
    if-nez v3, :cond_4e

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_3b

    :cond_4e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAirCommandModeAllowed uid = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isAirCommandModeAllowed return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_42
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_43
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_44
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_45
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v11, :cond_4f

    goto/16 :goto_51

    :cond_4f
    aget-object v1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isMultiWindowModeAllowedAsUser return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_46
    if-nez v3, :cond_50

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_3c

    :cond_50
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAirViewModeAllowed uid = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isAirViewModeAllowed return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_47
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_51

    goto/16 :goto_51

    :cond_51
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_48
    if-nez v3, :cond_52

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_3e

    :cond_52
    aget-object v1, v3, v10

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_54

    aget-object v3, v3, v11

    const-string/jumbo v4, "emergency"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    sget-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz v3, :cond_53

    goto :goto_3d

    :cond_53
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v11

    :goto_3d
    const-string/jumbo v0, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    goto :goto_3e

    :cond_54
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const-string/jumbo v3, "isKioskModeEnabled param UID: "

    invoke-static {v3, v1, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isKioskModeEnabled return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_49
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_4a
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_4b
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "eas_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_3f

    :sswitch_42
    const-string/jumbo v1, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto/16 :goto_3f

    :cond_55
    const/16 v19, 0xd

    goto/16 :goto_3f

    :sswitch_43
    const-string/jumbo v1, "getMaxCalendarAgeFilter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto/16 :goto_3f

    :cond_56
    const/16 v19, 0xc

    goto/16 :goto_3f

    :sswitch_44
    const-string/jumbo v1, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto/16 :goto_3f

    :cond_57
    const/16 v19, 0xb

    goto/16 :goto_3f

    :sswitch_45
    const-string/jumbo v1, "getForceSMIMECertificateForSigning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto/16 :goto_3f

    :cond_58
    const/16 v19, 0xa

    goto/16 :goto_3f

    :sswitch_46
    const-string/jumbo v1, "isIncomingAttachmentsAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto/16 :goto_3f

    :cond_59
    const/16 v19, 0x9

    goto/16 :goto_3f

    :sswitch_47
    const-string/jumbo v1, "getForceSMIMECertificate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto/16 :goto_3f

    :cond_5a
    move/from16 v19, v16

    goto/16 :goto_3f

    :sswitch_48
    const-string/jumbo v1, "getAccountEmailPassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_3f

    :cond_5b
    const/16 v19, 0x7

    goto :goto_3f

    :sswitch_49
    const-string/jumbo v1, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_3f

    :cond_5c
    move/from16 v19, v7

    goto :goto_3f

    :sswitch_4a
    const-string/jumbo v1, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_3f

    :cond_5d
    move/from16 v19, v17

    goto :goto_3f

    :sswitch_4b
    const-string/jumbo v1, "getAccountCertificatePassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_3f

    :cond_5e
    move/from16 v19, v18

    goto :goto_3f

    :sswitch_4c
    const-string/jumbo v1, "getRequiredSignedMIMEMessages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_3f

    :cond_5f
    move/from16 v19, v8

    goto :goto_3f

    :sswitch_4d
    const-string/jumbo v1, "getMaxEmailAgeFilter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_3f

    :cond_60
    const/16 v19, 0x2

    goto :goto_3f

    :sswitch_4e
    const-string/jumbo v1, "setAccountEmailPassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_3f

    :cond_61
    move/from16 v19, v11

    goto :goto_3f

    :sswitch_4f
    const-string/jumbo v1, "getIncomingAttachmentSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_3f

    :cond_62
    move/from16 v19, v10

    :goto_3f
    packed-switch v19, :pswitch_data_5

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_4d
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_63

    goto/16 :goto_51

    :cond_63
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_4e
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_64

    goto/16 :goto_51

    :cond_64
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_4f
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_65

    goto/16 :goto_51

    :cond_65
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_50
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_66

    goto/16 :goto_51

    :cond_66
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_51
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_67

    goto/16 :goto_51

    :cond_67
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_52
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_68

    goto/16 :goto_51

    :cond_68
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_53
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_69

    goto/16 :goto_51

    :cond_69
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_54
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6a

    goto/16 :goto_51

    :cond_6a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_55
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6b

    goto/16 :goto_51

    :cond_6b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_56
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6c

    goto/16 :goto_51

    :cond_6c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_57
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6d

    goto/16 :goto_51

    :cond_6d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_58
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6e

    goto/16 :goto_51

    :cond_6e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_59
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v11, :cond_6f

    goto/16 :goto_51

    :cond_6f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v3

    :pswitch_5a
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_70

    goto/16 :goto_51

    :cond_70
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5b
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    if-eqz v0, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5

    goto :goto_40

    :sswitch_50
    const-string/jumbo v1, "isMdmAdminPresent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_40

    :cond_71
    const/16 v19, 0x2

    goto :goto_40

    :sswitch_51
    const-string/jumbo v1, "getEnterpriseSdkVer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_40

    :cond_72
    move/from16 v19, v11

    goto :goto_40

    :sswitch_52
    const-string/jumbo v1, "getActiveAdmins"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_40

    :cond_73
    move/from16 v19, v10

    :goto_40
    packed-switch v19, :pswitch_data_6

    goto/16 :goto_51

    :pswitch_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2c
    invoke-virtual {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->isMdmAdminPresent()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_5d
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5e
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_74

    goto/16 :goto_51

    :cond_74
    aget-object v1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_41

    :cond_75
    return-object v1

    :cond_76
    invoke-static {v2, v12, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEmailAccount(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_77
    const-string/jumbo v0, "email_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_b3

    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6

    :goto_42
    move/from16 v17, v19

    goto :goto_43

    :sswitch_53
    const-string/jumbo v1, "isAccountAdditionAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_42

    :cond_78
    move/from16 v17, v7

    goto :goto_43

    :sswitch_54
    const-string/jumbo v1, "getAllowEmailForwarding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    goto :goto_42

    :sswitch_55
    const-string/jumbo v1, "isEmailNotificationsEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    goto :goto_42

    :cond_79
    move/from16 v17, v18

    goto :goto_43

    :sswitch_56
    const-string/jumbo v1, "isEmailSettingsChangesAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    goto :goto_42

    :cond_7a
    move/from16 v17, v8

    goto :goto_43

    :sswitch_57
    const-string/jumbo v1, "getEnterpriseEmailAccountObject"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    goto :goto_42

    :cond_7b
    const/16 v17, 0x2

    goto :goto_43

    :sswitch_58
    const-string/jumbo v1, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    goto :goto_42

    :cond_7c
    move/from16 v17, v11

    goto :goto_43

    :sswitch_59
    const-string/jumbo v1, "getAllowHtmlEmail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_42

    :cond_7d
    move/from16 v17, v10

    :cond_7e
    :goto_43
    packed-switch v17, :pswitch_data_7

    goto/16 :goto_51

    :pswitch_5f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_60
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7f

    goto/16 :goto_51

    :cond_7f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_61
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_80

    goto/16 :goto_51

    :cond_80
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_62
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_81

    goto/16 :goto_51

    :cond_81
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_63
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_82

    goto/16 :goto_51

    :cond_82
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "email.account"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_64
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_83

    goto/16 :goto_51

    :cond_83
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "eas.account"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_65
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_84

    goto/16 :goto_51

    :cond_84
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :cond_85
    invoke-static/range {p3 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_86
    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v1, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "getApplicationInstallUninstallList null"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7

    :goto_44
    move/from16 v6, v19

    goto/16 :goto_45

    :sswitch_5a
    const-string/jumbo v4, "getApplicationUninstallationEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_44

    :cond_87
    const/16 v6, 0x12

    goto/16 :goto_45

    :sswitch_5b
    const-string/jumbo v4, "getApplicationStateDisabledList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    goto :goto_44

    :cond_88
    const/16 v6, 0x11

    goto/16 :goto_45

    :sswitch_5c
    const-string/jumbo v4, "isPackageUpdateAllowed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    goto :goto_44

    :cond_89
    const/16 v6, 0x10

    goto/16 :goto_45

    :sswitch_5d
    const-string/jumbo v4, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_44

    :cond_8a
    const/16 v6, 0xf

    goto/16 :goto_45

    :sswitch_5e
    const-string/jumbo v4, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    goto :goto_44

    :cond_8b
    const/16 v6, 0xe

    goto/16 :goto_45

    :sswitch_5f
    const-string/jumbo v4, "isApplicationSetToDefault"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    goto :goto_44

    :cond_8c
    const/16 v6, 0xd

    goto/16 :goto_45

    :sswitch_60
    const-string/jumbo v4, "getApplicationStateEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    goto :goto_44

    :cond_8d
    const/16 v6, 0xc

    goto/16 :goto_45

    :sswitch_61
    const-string/jumbo v4, "isApplicationClearCacheDisabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto :goto_44

    :cond_8e
    const/16 v6, 0xb

    goto/16 :goto_45

    :sswitch_62
    const-string/jumbo v4, "getApplicationNameFromDb"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_44

    :cond_8f
    const/16 v6, 0xa

    goto/16 :goto_45

    :sswitch_63
    const-string/jumbo v4, "getDefaultApplicationInternal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    goto/16 :goto_44

    :cond_90
    const/16 v6, 0x9

    goto/16 :goto_45

    :sswitch_64
    const-string/jumbo v4, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    goto/16 :goto_44

    :cond_91
    move/from16 v6, v16

    goto/16 :goto_45

    :sswitch_65
    const-string/jumbo v4, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    goto/16 :goto_44

    :cond_92
    const/4 v6, 0x7

    goto :goto_45

    :sswitch_66
    const-string/jumbo v4, "getApplicationInstallUninstallListAsUser"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    goto/16 :goto_44

    :cond_93
    move v6, v7

    goto :goto_45

    :sswitch_67
    const-string/jumbo v4, "getApplicationUninstallationMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    goto/16 :goto_44

    :cond_94
    move/from16 v6, v17

    goto :goto_45

    :sswitch_68
    const-string/jumbo v4, "getApplicationInstallUninstallList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    goto/16 :goto_44

    :cond_95
    move/from16 v6, v18

    goto :goto_45

    :sswitch_69
    const-string/jumbo v4, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    goto/16 :goto_44

    :cond_96
    move v6, v8

    goto :goto_45

    :sswitch_6a
    const-string/jumbo v4, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    goto/16 :goto_44

    :cond_97
    const/4 v6, 0x2

    goto :goto_45

    :sswitch_6b
    const-string/jumbo v4, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    goto/16 :goto_44

    :cond_98
    move v6, v11

    goto :goto_45

    :sswitch_6c
    const-string/jumbo v4, "getAppInstallationMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    goto/16 :goto_44

    :cond_99
    move v6, v10

    :goto_45
    packed-switch v6, :pswitch_data_8

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_66
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_9a

    goto/16 :goto_51

    :cond_9a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_67
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_46
    if-ge v10, v2, :cond_9b

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v10, v11

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "getApplicationStateDisabledList value = "

    invoke-static {v4, v3, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_46

    :cond_9b
    return-object v1

    :cond_9c
    const-string/jumbo v0, "getApplicationStateDisabledList null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_68
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v11, :cond_9d

    goto/16 :goto_51

    :cond_9d
    aget-object v0, v3, v10

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_69
    if-eqz v3, :cond_9e

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_9e

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_47

    :cond_9e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    :goto_47
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_48

    :cond_9f
    return-object v1

    :pswitch_6a
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_a0

    goto/16 :goto_51

    :cond_a0
    aget-object v0, v3, v10

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6b
    const/4 v5, 0x2

    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v5, :cond_a1

    goto/16 :goto_51

    :cond_a1
    aget-object v0, v3, v10

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6c
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_a2

    goto/16 :goto_51

    :cond_a2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v10

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6d
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, 0x2

    if-gt v0, v5, :cond_a3

    goto/16 :goto_51

    :cond_a3
    aget-object v0, v3, v10

    aget-object v4, v3, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_6e
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v11, :cond_a4

    goto/16 :goto_51

    :cond_a4
    aget-object v0, v3, v10

    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_6f
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_a5

    goto/16 :goto_51

    :cond_a5
    :try_start_2d
    aget-object v0, v3, v10

    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13
    :try_end_2d
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_2d} :catch_2c

    goto :goto_49

    :catch_2c
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "URISyntaxException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_a6
    return-object v1

    :pswitch_70
    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4a
    if-ge v10, v2, :cond_a7

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v10, v11

    check-cast v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4a

    :cond_a7
    return-object v1

    :pswitch_71
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v11, :cond_a8

    goto/16 :goto_51

    :cond_a8
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :pswitch_72
    if-eqz v3, :cond_ac

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_a9

    goto :goto_4c

    :cond_a9
    const-string/jumbo v1, "getApplicationInstallUninstallListAsUser"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v3, v3, v11

    invoke-static {v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4b
    if-ge v10, v0, :cond_aa

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v10, v11

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "getApplicationInstallUninstallListAsUser value = "

    invoke-static {v4, v2, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4b

    :cond_aa
    return-object v3

    :cond_ab
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_ac
    :goto_4c
    const-string/jumbo v0, "getApplicationInstallUninstallListAsUser selectionArgs is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_73
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_74
    if-eqz v3, :cond_b0

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v11, :cond_ad

    goto :goto_4e

    :cond_ad
    const-string/jumbo v1, "getApplicationInstallUninstallList"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v3, v10

    invoke-static {v12, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4d
    if-ge v10, v0, :cond_ae

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v10, v11

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "getApplicationInstallUninstallList value = "

    invoke-static {v4, v2, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4d

    :cond_ae
    return-object v3

    :cond_af
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_b0
    :goto_4e
    const-string/jumbo v0, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_75
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b3

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "clipboard_blacklist_perUid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_76
    if-eqz v3, :cond_b3

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b3

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "clipboard_whitelist_perUid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_77
    if-eqz v3, :cond_b1

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b1

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4f

    :cond_b1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    :goto_4f
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_50

    :cond_b2
    return-object v1

    :pswitch_78
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_b3
    :goto_51
    return-object v13

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5b
        :pswitch_4c
        :pswitch_3e
        :pswitch_2c
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x741f137a -> :sswitch_5
        -0x5d7bb47d -> :sswitch_4
        -0x44588ee5 -> :sswitch_3
        -0x208922d -> :sswitch_2
        0x1b40829f -> :sswitch_1
        0x68ddea58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d00b11f -> :sswitch_23
        -0x7cda2990 -> :sswitch_22
        -0x7bf265f6 -> :sswitch_21
        -0x7bc370bc -> :sswitch_20
        -0x6c8256b9 -> :sswitch_1f
        -0x68231777 -> :sswitch_1e
        -0x5f479d3d -> :sswitch_1d
        -0x5d96bdfd -> :sswitch_1c
        -0x49039c7d -> :sswitch_1b
        -0x3169f913 -> :sswitch_1a
        -0x24629eae -> :sswitch_19
        -0x105b68f3 -> :sswitch_18
        -0xb98097b -> :sswitch_17
        -0x63922de -> :sswitch_16
        -0x4a6fada -> :sswitch_15
        -0x2cd0269 -> :sswitch_14
        -0x2246832 -> :sswitch_13
        -0x117c459 -> :sswitch_12
        0x4fd98e1 -> :sswitch_11
        0x85fa496 -> :sswitch_10
        0x1086aa03 -> :sswitch_f
        0x18e41b33 -> :sswitch_e
        0x1d261c9d -> :sswitch_d
        0x240ce64e -> :sswitch_c
        0x32c1d30f -> :sswitch_b
        0x438d32f5 -> :sswitch_a
        0x4abdeb96 -> :sswitch_9
        0x64defd38 -> :sswitch_8
        0x6db77171 -> :sswitch_7
        0x6ec40bb4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x75228db3 -> :sswitch_34
        -0x5344faa1 -> :sswitch_33
        -0x49b19ab4 -> :sswitch_32
        -0x477f69dc -> :sswitch_31
        -0x1b1e2f47 -> :sswitch_30
        -0x6441366 -> :sswitch_2f
        -0x2067e91 -> :sswitch_2e
        0x85fa496 -> :sswitch_2d
        0x10dc886c -> :sswitch_2c
        0x27deb5dc -> :sswitch_2b
        0x376703d8 -> :sswitch_2a
        0x428f670d -> :sswitch_29
        0x4f9505ac -> :sswitch_28
        0x5afa1a68 -> :sswitch_27
        0x6238abf9 -> :sswitch_26
        0x694839c4 -> :sswitch_25
        0x6ad3e979 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x5d1cb00b -> :sswitch_41
        -0x58dab65f -> :sswitch_40
        -0x55d0d0ee -> :sswitch_3f
        -0x495e7741 -> :sswitch_3e
        -0x1abb5fa -> :sswitch_3d
        0x1fa36ac0 -> :sswitch_3c
        0x2f421cc3 -> :sswitch_3b
        0x32574534 -> :sswitch_3a
        0x34565e5f -> :sswitch_39
        0x38ab60cf -> :sswitch_38
        0x3ab3e61a -> :sswitch_37
        0x4ed22f86 -> :sswitch_36
        0x6c0df1e8 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_4f
        -0x7a29af54 -> :sswitch_4e
        -0x7672ed17 -> :sswitch_4d
        -0x6a25634f -> :sswitch_4c
        -0x437f6e25 -> :sswitch_4b
        -0x1e01c219 -> :sswitch_4a
        -0x14b468b1 -> :sswitch_49
        0xb8321a0 -> :sswitch_48
        0x26b3fb45 -> :sswitch_47
        0x2a7ba768 -> :sswitch_46
        0x37929121 -> :sswitch_45
        0x6e37395a -> :sswitch_44
        0x77ba6b2b -> :sswitch_43
        0x7ec2cd45 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x69b477e0 -> :sswitch_52
        -0x4e0d4c0 -> :sswitch_51
        0x1d6710b8 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x793fada2 -> :sswitch_59
        -0x5c3258ae -> :sswitch_58
        -0x3c3a3ab9 -> :sswitch_57
        -0x394ec066 -> :sswitch_56
        0x1733e8eb -> :sswitch_55
        0x4e985da6 -> :sswitch_54
        0x4fb7d6e9 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x777467f8 -> :sswitch_6c
        -0x75f653b4 -> :sswitch_6b
        -0x526f4ac4 -> :sswitch_6a
        -0x42f2906e -> :sswitch_69
        -0x29404601 -> :sswitch_68
        -0x2360eeb0 -> :sswitch_67
        0x130dedfc -> :sswitch_66
        0x14014325 -> :sswitch_65
        0x16233ecf -> :sswitch_64
        0x1a458c22 -> :sswitch_63
        0x1e373fed -> :sswitch_62
        0x21074337 -> :sswitch_61
        0x22e592aa -> :sswitch_60
        0x2383ddea -> :sswitch_5f
        0x2dd7b5a9 -> :sswitch_5e
        0x3c119522 -> :sswitch_5d
        0x3d4c4243 -> :sswitch_5c
        0x3d73f371 -> :sswitch_5b
        0x49cef874 -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

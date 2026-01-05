.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "AuditLog"

    const/4 v2, 0x2

    const-string/jumbo v3, "com.sec.knox.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BluetoothPolicy"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BluetoothUtils"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BrowserPolicy"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "CertificatePolicy"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "FirewallPolicy"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "LocationPolicy"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "PasswordPolicy2"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RestrictionPolicy1"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RestrictionPolicy2"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RestrictionPolicy3"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RestrictionPolicy4"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RoamingPolicy"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "SecurityPolicy"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DateTimePolicy"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DlpPolicy"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DomainFilterPolicy"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DexPolicy"

    const/16 v2, 0x1b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "RestrictionPolicy"

    const/16 v2, 0x1e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "ProfilePolicy"

    const/16 v2, 0x1f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getArrayLength([Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SecContentProvider"

    const-string/jumbo v1, "getArrayLength() return 0 but some exception occurs with invalid request."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p1, "POWER_SAVING_MODE_ALLOWED cursor return "

    const-string/jumbo v0, "SecContentProvider"

    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return p0
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
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insert(), uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SecContentProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "fail to get caller name"

    :cond_0
    const-string/jumbo v1, "called from "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x6

    const-string v1, "API"

    if-eq p0, p1, :cond_3

    const/16 p1, 0xe

    if-eq p0, p1, :cond_2

    const/16 p1, 0x14

    if-eq p0, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string/jumbo p0, "security_policy"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz p0, :cond_9

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string/jumbo v1, "setDodBannerVisibleStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "isVisible"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto/16 :goto_2

    :cond_2
    const-string/jumbo p0, "password_policy"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz p0, :cond_9

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string/jumbo v1, "setPwdChangeRequested"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "flag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    goto/16 :goto_2

    :cond_3
    const-string/jumbo p0, "certificate_policy"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz p0, :cond_9

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "fail"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "module"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_9

    const-string/jumbo v1, "notifyCertificateFailure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo p0, "auditlog"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-nez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string/jumbo p1, "tag"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "component"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "userid"

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "param{%d}"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_7
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance p2, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(IIILandroid/sec/enterprise/auditlog/AuditLogParams;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v4, Lcom/samsung/android/knox/log/LegacyEvent;

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "redactedMessage"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "outcome"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v0, "severity"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/knox/log/LegacyEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventInternal(ILandroid/sec/enterprise/auditlog/AuditEvent;)V

    :cond_9
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string/jumbo v3, "isDodBannerVisible"

    const-string/jumbo v4, "isCameraEnabled"

    const-string/jumbo v5, "isHeadPhoneEnabled"

    const-string/jumbo v6, "isSettingsChangesAllowed"

    const-string/jumbo v7, "isSmartClipModeAllowed"

    const-string/jumbo v8, "isWifiDirectAllowed"

    const-string/jumbo v9, "isWallpaperChangeAllowed"

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "query(), uri = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " selection = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "SecContentProvider"

    invoke-static {v15, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, p0

    iget-object v12, v12, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "fail to get caller name"

    :cond_0
    const-string/jumbo v14, "called from "

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_cf

    const/4 v13, 0x3

    if-eq v0, v13, :cond_c7

    const/4 v13, 0x4

    if-eq v0, v13, :cond_b7

    const-string/jumbo v13, "browser_policy"

    const/4 v14, 0x5

    if-eq v0, v14, :cond_b1

    const/4 v14, 0x6

    if-eq v0, v14, :cond_a7

    const/16 v14, 0xa

    if-eq v0, v14, :cond_a1

    const/16 v14, 0xc

    if-eq v0, v14, :cond_9b

    const/16 v13, 0x18

    if-eq v0, v13, :cond_98

    const/16 v13, 0x1a

    if-eq v0, v13, :cond_95

    const/16 v13, 0x1b

    if-eq v0, v13, :cond_92

    const/16 v13, 0x1e

    const-string/jumbo v14, "return null"

    const-string/jumbo v20, "restriction_policy"

    if-eq v0, v13, :cond_7d

    const/16 v13, 0x1f

    if-eq v0, v13, :cond_7a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_30

    :pswitch_0
    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "getCredentialStorageStatus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_30

    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string/jumbo v1, "getCredentialStorageStatus = 1"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "isRoamingDataEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v16, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "isRoamingSyncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v18

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v16, v17

    :goto_0
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_30

    :pswitch_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingSyncEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v3, "isScreenCaptureEnabledInternal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v3, "isUsbHostStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v3, "isUsbTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v16, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v3, "isUsbMassStorageEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "isWifiTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "getAllowedFOTAInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v16, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "isSDCardWriteAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/16 v16, 0x7

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_1

    :cond_d
    const/16 v16, 0x6

    goto :goto_1

    :sswitch_b
    const-string/jumbo v3, "isVpnAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_1

    :cond_e
    const/16 v16, 0x5

    goto :goto_1

    :sswitch_c
    const-string/jumbo v3, "isWifiEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_1

    :cond_f
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_d
    const-string/jumbo v3, "isVideoRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_1

    :cond_10
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_1

    :cond_11
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_f
    const-string/jumbo v3, "isUsbMediaPlayerAvailable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_1

    :cond_12
    move/from16 v16, v18

    goto :goto_1

    :sswitch_10
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_1

    :cond_13
    move/from16 v16, v17

    :goto_1
    packed-switch v16, :pswitch_data_2

    goto/16 :goto_30

    :pswitch_6
    if-eqz v2, :cond_14

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_14

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2

    :cond_14
    move/from16 v14, v17

    :goto_2
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :pswitch_7
    if-eqz v2, :cond_15

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_3

    :cond_15
    move/from16 v14, v17

    :goto_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbHostStorageAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_9
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_16

    goto/16 :goto_30

    :cond_16
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v0, v2, v17

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbMassStorageEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWifiTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAllowedFOTAInfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_17

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v14, v17

    :goto_4
    if-ge v14, v2, :cond_17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v14, 0x1

    check-cast v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    :cond_17
    return-object v1

    :pswitch_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardWriteAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_d
    if-eqz v2, :cond_18

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_18

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_5

    :cond_18
    move/from16 v14, v17

    :goto_5
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isVpnAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_f
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v2, :cond_19

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_6

    :cond_19
    move/from16 v14, v17

    :goto_6
    if-eqz v0, :cond_d0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isWifiEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_10
    if-eqz v2, :cond_1a

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_7

    :cond_1a
    move/from16 v14, v17

    :goto_7
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isVideoRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_11
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_8

    :cond_1b
    move/from16 v14, v17

    :goto_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_12
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1c

    goto/16 :goto_30

    :cond_1c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbMediaPlayerAvailable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_13
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :pswitch_14
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_9

    :sswitch_11
    const-string/jumbo v3, "isSVoiceAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_9

    :cond_1d
    const/16 v3, 0xe

    move/from16 v16, v3

    goto/16 :goto_9

    :sswitch_12
    const-string/jumbo v3, "isScreenCaptureEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_9

    :cond_1e
    const/16 v16, 0xd

    goto/16 :goto_9

    :sswitch_13
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_9

    :cond_1f
    const/16 v16, 0xc

    goto/16 :goto_9

    :sswitch_14
    const-string/jumbo v3, "isSDCardMoveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_9

    :cond_20
    const/16 v16, 0xb

    goto/16 :goto_9

    :sswitch_15
    const-string/jumbo v3, "isUsbDebuggingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_9

    :cond_21
    const/16 v16, 0xa

    goto/16 :goto_9

    :sswitch_16
    const-string/jumbo v3, "isIrisCameraEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_9

    :cond_22
    const/16 v16, 0x9

    goto/16 :goto_9

    :sswitch_17
    const-string/jumbo v3, "isSafeModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_9

    :cond_23
    const/16 v16, 0x8

    goto/16 :goto_9

    :sswitch_18
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_9

    :cond_24
    const/16 v16, 0x7

    goto :goto_9

    :sswitch_19
    const-string/jumbo v3, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_9

    :cond_25
    const/16 v16, 0x6

    goto :goto_9

    :sswitch_1a
    const-string/jumbo v3, "isSdCardEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_9

    :cond_26
    const/16 v16, 0x5

    goto :goto_9

    :sswitch_1b
    const-string/jumbo v3, "isOTAUpgradeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_9

    :cond_27
    const/16 v16, 0x4

    goto :goto_9

    :sswitch_1c
    const-string/jumbo v3, "isStopSystemAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_9

    :cond_28
    const/16 v16, 0x3

    goto :goto_9

    :sswitch_1d
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_9

    :cond_29
    const/16 v16, 0x2

    goto :goto_9

    :sswitch_1e
    const-string/jumbo v3, "isScreenPinningAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_9

    :cond_2a
    move/from16 v16, v18

    goto :goto_9

    :sswitch_1f
    const-string/jumbo v3, "isShareListAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_9

    :cond_2b
    move/from16 v16, v17

    :goto_9
    packed-switch v16, :pswitch_data_3

    goto/16 :goto_30

    :pswitch_15
    if-eqz v2, :cond_2c

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    move/from16 v3, v18

    if-ne v1, v3, :cond_2d

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_a

    :cond_2c
    move/from16 v3, v18

    :cond_2d
    if-eqz v2, :cond_2e

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_2e

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_a

    :cond_2e
    move/from16 v14, v17

    :goto_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSVoiceAllowed result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSVoiceAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_16
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2f

    goto/16 :goto_30

    :cond_2f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenCaptureEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_17
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_30

    goto/16 :goto_30

    :cond_30
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_31

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_b

    :cond_31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    :goto_b
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_18
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_32

    goto/16 :goto_30

    :cond_32
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardMoveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbDebuggingEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1a
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_33

    goto/16 :goto_30

    :cond_33
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isIrisCameraEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSafeModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1c
    if-eqz v2, :cond_34

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_34

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_c

    :cond_34
    move/from16 v14, v17

    :goto_c
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1d
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ge v1, v13, :cond_35

    goto/16 :goto_30

    :cond_35
    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/16 v18, 0x1

    aget-object v2, v2, v18

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSettingsChangesAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSdCardEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_1f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOTAUpgradeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_20
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isStopSystemAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_21
    if-eqz v2, :cond_36

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_36

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_d

    :cond_36
    move/from16 v14, v17

    :goto_d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :pswitch_22
    if-eqz v2, :cond_37

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_37

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_37
    if-eqz v2, :cond_38

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_38

    const/4 v3, 0x1

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_e

    :cond_38
    const/4 v3, 0x1

    :goto_e
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v1, 0x200000000000000L

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isScreenPinningAllowed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenPinningAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_23
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_39

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_f

    :cond_39
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    :goto_f
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isShareListAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_24
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_10

    :sswitch_20
    const-string/jumbo v3, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_10

    :cond_3a
    const/16 v16, 0xd

    goto/16 :goto_10

    :sswitch_21
    const-string/jumbo v3, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto/16 :goto_10

    :cond_3b
    const/16 v16, 0xc

    goto/16 :goto_10

    :sswitch_22
    const-string/jumbo v3, "isNFCEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto/16 :goto_10

    :cond_3c
    const/16 v16, 0xb

    goto/16 :goto_10

    :sswitch_23
    const-string/jumbo v3, "isMockLocationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_10

    :cond_3d
    const/16 v16, 0xa

    goto/16 :goto_10

    :sswitch_24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto/16 :goto_10

    :cond_3e
    const/16 v16, 0x9

    goto/16 :goto_10

    :sswitch_25
    const-string/jumbo v3, "isNonMarketAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto/16 :goto_10

    :cond_3f
    const/16 v16, 0x8

    goto/16 :goto_10

    :sswitch_26
    const-string/jumbo v3, "isFirmwareRecoveryAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_10

    :cond_40
    const/16 v16, 0x7

    goto :goto_10

    :sswitch_27
    const-string/jumbo v3, "isLockScreenViewAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_10

    :cond_41
    const/16 v16, 0x6

    goto :goto_10

    :sswitch_28
    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_10

    :cond_42
    const/16 v16, 0x5

    goto :goto_10

    :sswitch_29
    const-string/jumbo v3, "isLockScreenEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_10

    :cond_43
    const/16 v16, 0x4

    goto :goto_10

    :sswitch_2a
    const-string/jumbo v3, "isMicrophoneEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_10

    :cond_44
    const/16 v16, 0x3

    goto :goto_10

    :sswitch_2b
    const-string/jumbo v3, "isMicrophoneEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_10

    :cond_45
    const/16 v16, 0x2

    goto :goto_10

    :sswitch_2c
    const-string/jumbo v3, "isGoogleCrashReportedAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_10

    :cond_46
    const/16 v16, 0x1

    goto :goto_10

    :sswitch_2d
    const-string/jumbo v3, "isNFCEnabledWithMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_10

    :cond_47
    const/16 v16, 0x0

    :goto_10
    packed-switch v16, :pswitch_data_4

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :pswitch_25
    const-string/jumbo v1, "isKillingActivitiesOnLeaveAllowed return = "

    if-nez v2, :cond_48

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " callingUid : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_48
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v4, v2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const-string v3, " userid : "

    invoke-static {v1, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_26
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_27
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isNFCEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_28
    const-string/jumbo v1, "callingUid = "

    if-nez v2, :cond_49

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v10, v1, v15}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_49
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v4, v2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMockLocationEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMockLocationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_29
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4a

    goto/16 :goto_30

    :cond_4a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2a
    if-eqz v2, :cond_4b

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_13

    :cond_4b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    :goto_13
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNonMarketAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2b
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4c

    goto/16 :goto_30

    :cond_4c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareRecoveryAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2c
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_4d

    goto/16 :goto_30

    :cond_4d
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_4e

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v4, v2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    goto :goto_14

    :cond_4e
    const/16 v17, 0x0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isLockScreenViewAllowed return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenViewAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2d
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4f

    goto/16 :goto_30

    :cond_4f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2e
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_50

    goto/16 :goto_30

    :cond_50
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_2f
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_51

    goto/16 :goto_30

    :cond_51
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_52

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v4, v2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_15

    :cond_52
    const/16 v17, 0x0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_30
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ge v1, v13, :cond_53

    goto/16 :goto_30

    :cond_53
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/16 v18, 0x1

    aget-object v2, v2, v18

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleCrashReportedAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_32
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isNFCEnabledWithMsg"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_33
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    goto/16 :goto_16

    :sswitch_2e
    const-string/jumbo v3, "isAirplaneModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto/16 :goto_16

    :cond_54
    const/16 v1, 0xe

    move/from16 v16, v1

    goto/16 :goto_16

    :sswitch_2f
    const-string/jumbo v3, "isClipboardShareAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto/16 :goto_16

    :cond_55
    const/16 v16, 0xd

    goto/16 :goto_16

    :sswitch_30
    const-string/jumbo v3, "isFactoryResetAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto/16 :goto_16

    :cond_56
    const/16 v16, 0xc

    goto/16 :goto_16

    :sswitch_31
    const-string/jumbo v3, "isAndroidBeamAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto/16 :goto_16

    :cond_57
    const/16 v16, 0xb

    goto/16 :goto_16

    :sswitch_32
    const-string/jumbo v3, "isDeveloperModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto/16 :goto_16

    :cond_58
    const/16 v16, 0xa

    goto/16 :goto_16

    :sswitch_33
    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto/16 :goto_16

    :cond_59
    const/16 v16, 0x9

    goto/16 :goto_16

    :sswitch_34
    const-string/jumbo v3, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto/16 :goto_16

    :cond_5a
    const/16 v16, 0x8

    goto/16 :goto_16

    :sswitch_35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_16

    :cond_5b
    const/16 v16, 0x7

    goto :goto_16

    :sswitch_36
    const-string/jumbo v3, "isBackupAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_16

    :cond_5c
    const/16 v16, 0x6

    goto :goto_16

    :sswitch_37
    const-string/jumbo v3, "isAudioRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_16

    :cond_5d
    const/16 v16, 0x5

    goto :goto_16

    :sswitch_38
    const-string/jumbo v3, "isCellularDataAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_16

    :cond_5e
    const/16 v16, 0x4

    goto :goto_16

    :sswitch_39
    const-string/jumbo v3, "isClipboardAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_16

    :cond_5f
    const/16 v16, 0x3

    goto :goto_16

    :sswitch_3a
    const-string/jumbo v3, "isClipboardAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_16

    :cond_60
    const/16 v16, 0x2

    goto :goto_16

    :sswitch_3b
    const-string/jumbo v3, "isBluetoothTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_16

    :cond_61
    const/16 v16, 0x1

    goto :goto_16

    :sswitch_3c
    const-string/jumbo v3, "isDataSavingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_16

    :cond_62
    const/16 v16, 0x0

    :goto_16
    packed-switch v16, :pswitch_data_5

    goto/16 :goto_30

    :pswitch_34
    if-eqz v2, :cond_63

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_63

    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_17

    :cond_63
    const/4 v14, 0x0

    :goto_17
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAirplaneModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_35
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_36
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFactoryResetAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_37
    if-eqz v2, :cond_64

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_64

    const/16 v17, 0x0

    aget-object v0, v2, v17

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_64
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isAndroidBeamAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_38
    if-eqz v2, :cond_65

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_65

    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_18

    :cond_65
    const/4 v14, 0x0

    :goto_18
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDeveloperModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_39
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_66

    goto/16 :goto_30

    :cond_66
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackgroundProcessLimitEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3b
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_67

    goto/16 :goto_30

    :cond_67
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3c
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_68

    goto/16 :goto_30

    :cond_68
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackupAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3d
    if-eqz v2, :cond_69

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_69

    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_19

    :cond_69
    const/4 v14, 0x0

    :goto_19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAudioRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCellularDataAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_3f
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ge v1, v13, :cond_6a

    goto/16 :goto_30

    :cond_6a
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/16 v18, 0x1

    aget-object v2, v2, v18

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SemKnoxPolicyContract.RestrictionPolicy.CLIPBOARD_ALLOWED_AS_USER return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_40
    if-eqz v2, :cond_6b

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_6c

    :cond_6b
    const/4 v3, 0x0

    goto :goto_1a

    :cond_6c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1b

    :goto_1a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    :goto_1b
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_41
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_42
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDataSavingAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_43
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5

    goto/16 :goto_1c

    :sswitch_3d
    const-string/jumbo v3, "isBiometricAuthenticationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto :goto_1c

    :cond_6d
    const/16 v16, 0x7

    goto :goto_1c

    :sswitch_3e
    const-string/jumbo v3, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_1c

    :cond_6e
    const/16 v16, 0x6

    goto :goto_1c

    :sswitch_3f
    const-string/jumbo v3, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto :goto_1c

    :cond_6f
    const/16 v16, 0x5

    goto :goto_1c

    :sswitch_40
    const-string/jumbo v3, "isChangeRequested"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_1c

    :cond_70
    const/16 v16, 0x4

    goto :goto_1c

    :sswitch_41
    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_1c

    :cond_71
    const/16 v16, 0x3

    goto :goto_1c

    :sswitch_42
    const-string/jumbo v3, "getPasswordLockDelay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_1c

    :cond_72
    const/16 v16, 0x2

    goto :goto_1c

    :sswitch_43
    const-string/jumbo v3, "isPasswordVisibilityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto/16 :goto_1c

    :cond_73
    const/16 v16, 0x1

    goto/16 :goto_1c

    :sswitch_44
    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_1c

    :cond_74
    const/16 v16, 0x0

    :goto_1c
    packed-switch v16, :pswitch_data_6

    goto/16 :goto_30

    :pswitch_44
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_75

    goto/16 :goto_30

    :cond_75
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_45
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_76

    goto/16 :goto_30

    :cond_76
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_46
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_77

    goto/16 :goto_30

    :cond_77
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_47
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isChangeRequested"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_48
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :pswitch_49
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPasswordLockDelay"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_4a
    const-string/jumbo v1, "isPasswordVisibilityEnabled callingUid = "

    if-nez v2, :cond_78

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-static {v10, v1, v15}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_78
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/16 v17, 0x0

    aget-object v4, v2, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_4b
    if-eqz v2, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    aget-object v3, v2, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    goto/16 :goto_1e

    :cond_79
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_7a
    if-eqz v1, :cond_d0

    const-string/jumbo v0, "profilepolicy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    if-nez v0, :cond_7b

    goto/16 :goto_30

    :cond_7b
    const-string/jumbo v3, "Restriction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    goto/16 :goto_30

    :cond_7c
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :cond_7d
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6

    goto/16 :goto_1f

    :sswitch_45
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto/16 :goto_1f

    :cond_7e
    const/16 v16, 0xa

    goto/16 :goto_1f

    :sswitch_46
    const-string/jumbo v3, "showToastIfIntelligenceOnlineProcessingDisallowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_1f

    :cond_7f
    const/16 v16, 0x9

    goto/16 :goto_1f

    :sswitch_47
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_1f

    :cond_80
    const/16 v16, 0x8

    goto/16 :goto_1f

    :sswitch_48
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto :goto_1f

    :cond_81
    const/16 v16, 0x7

    goto :goto_1f

    :sswitch_49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto :goto_1f

    :cond_82
    const/16 v16, 0x6

    goto :goto_1f

    :sswitch_4a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_1f

    :cond_83
    const/16 v16, 0x5

    goto :goto_1f

    :sswitch_4b
    const-string/jumbo v3, "isIntelligenceOnlineProcessingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto :goto_1f

    :cond_84
    const/16 v16, 0x4

    goto :goto_1f

    :sswitch_4c
    const-string/jumbo v3, "isLocalContactStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto/16 :goto_1f

    :cond_85
    const/16 v16, 0x3

    goto/16 :goto_1f

    :sswitch_4d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto/16 :goto_1f

    :cond_86
    const/16 v16, 0x2

    goto/16 :goto_1f

    :sswitch_4e
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_1f

    :cond_87
    const/16 v16, 0x1

    goto/16 :goto_1f

    :sswitch_4f
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_1f

    :cond_88
    const/16 v16, 0x0

    :goto_1f
    packed-switch v16, :pswitch_data_7

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :pswitch_4c
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_89

    goto/16 :goto_30

    :cond_89
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_8a

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :cond_8a
    const/16 v17, 0x0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_4d
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->showToastIfIntelligenceOnlineProcessingDisallowed(I)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_4e
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_8b

    goto/16 :goto_30

    :cond_8b
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_4f
    const/16 v17, 0x0

    if-eqz v2, :cond_8c

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8c

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_20

    :cond_8c
    const/4 v14, 0x0

    :goto_20
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_50
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_8d

    goto/16 :goto_30

    :cond_8d
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_51
    const/16 v17, 0x0

    if-eqz v2, :cond_8e

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8e

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_21

    :cond_8e
    const/4 v14, 0x0

    :goto_21
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_24

    :pswitch_52
    if-eqz v2, :cond_8f

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8f

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    move-result v0

    goto :goto_24

    :cond_8f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_24

    :pswitch_53
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_24

    :pswitch_54
    if-eqz v2, :cond_90

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_90

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_22

    :cond_90
    const/4 v14, 0x0

    :goto_22
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_55
    if-eqz v2, :cond_91

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_91

    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_23

    :cond_91
    const/4 v14, 0x0

    :goto_23
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_24

    :pswitch_56
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    :goto_24
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :cond_92
    const-string/jumbo v0, "dex_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    const-string/jumbo v2, "isDexDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string/jumbo v2, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    goto/16 :goto_30

    :cond_93
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenTimeoutChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_94
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDexDisabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_95
    if-eqz v1, :cond_d0

    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_30

    :cond_96
    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "firewall"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/Firewall;

    if-eqz v1, :cond_97

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v12

    :cond_97
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_98
    const-string/jumbo v0, "date_time_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string/jumbo v2, "getAutomaticTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    goto/16 :goto_30

    :cond_99
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutomaticTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_9a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_9b
    const-string/jumbo v0, "location_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    const-string/jumbo v3, "isLocationProviderBlockedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    goto/16 :goto_30

    :cond_9c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_9d
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_9e

    goto/16 :goto_30

    :cond_9e
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_a0

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_9f

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v3, "isLocationProviderBlockedAsUser using userId = "

    const-string v4, " instead of UserHandle.USER_CURRENT"

    invoke-static {v1, v3, v4, v15}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    const/16 v17, 0x0

    aget-object v2, v2, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_25

    :cond_a0
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    :goto_25
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLocationProviderBlockedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_a1
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v2, "misc_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    if-eqz v2, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7

    goto/16 :goto_26

    :sswitch_50
    const-string/jumbo v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto/16 :goto_26

    :cond_a2
    const/16 v16, 0x3

    goto/16 :goto_26

    :sswitch_51
    const-string/jumbo v3, "getURLFilterEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    goto/16 :goto_26

    :cond_a3
    const/16 v16, 0x2

    goto/16 :goto_26

    :sswitch_52
    const-string/jumbo v3, "isGlobalProxyAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    goto/16 :goto_26

    :cond_a4
    const/16 v16, 0x1

    goto/16 :goto_26

    :sswitch_53
    const-string/jumbo v3, "getURLFilterList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto/16 :goto_26

    :cond_a5
    const/16 v16, 0x0

    :goto_26
    packed-switch v16, :pswitch_data_8

    goto/16 :goto_30

    :pswitch_57
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterReportEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_58
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_59
    invoke-virtual {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGlobalProxyAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_a6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_27

    :cond_a6
    return-object v1

    :cond_a7
    const-string/jumbo v0, "certificate_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8

    :goto_28
    move/from16 v13, v16

    goto/16 :goto_29

    :sswitch_54
    const-string/jumbo v3, "isRevocationCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    goto :goto_28

    :cond_a8
    const/4 v13, 0x4

    goto/16 :goto_29

    :sswitch_55
    const-string/jumbo v3, "notifyCertificateFailure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto :goto_28

    :cond_a9
    const/4 v13, 0x3

    goto/16 :goto_29

    :sswitch_56
    const-string/jumbo v3, "isCaCertificateDisabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto :goto_28

    :cond_aa
    const/4 v13, 0x2

    goto/16 :goto_29

    :sswitch_57
    const-string/jumbo v3, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    goto :goto_28

    :cond_ab
    const/4 v13, 0x1

    goto/16 :goto_29

    :sswitch_58
    const-string/jumbo v3, "isOcspCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    goto :goto_28

    :cond_ac
    const/4 v13, 0x0

    :goto_29
    packed-switch v13, :pswitch_data_9

    goto/16 :goto_30

    :pswitch_5b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRevocationCheckEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5c
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v13, 0x2

    if-gt v1, v13, :cond_ad

    goto/16 :goto_30

    :cond_ad
    const/16 v17, 0x0

    aget-object v1, v2, v17

    const/4 v3, 0x1

    aget-object v3, v2, v3

    aget-object v2, v2, v13

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v12

    :pswitch_5d
    const/4 v3, 0x1

    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ae

    goto/16 :goto_30

    :cond_ae
    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_af

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_af
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCaCertificateDisabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5e
    if-eqz v2, :cond_b0

    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b0

    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0

    goto/16 :goto_2a

    :cond_b0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    :goto_2a
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUserRemoveCertificatesAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOcspCheckEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_b1
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9

    goto/16 :goto_2b

    :sswitch_59
    const-string/jumbo v2, "getCookiesSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    goto/16 :goto_2b

    :cond_b2
    const/16 v16, 0x4

    goto/16 :goto_2b

    :sswitch_5a
    const-string/jumbo v2, "getHttpProxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    goto/16 :goto_2b

    :cond_b3
    const/16 v16, 0x3

    goto/16 :goto_2b

    :sswitch_5b
    const-string/jumbo v2, "getJavaScriptSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b4

    goto/16 :goto_2b

    :cond_b4
    const/16 v16, 0x2

    goto/16 :goto_2b

    :sswitch_5c
    const-string/jumbo v2, "getAutoFillSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    goto/16 :goto_2b

    :cond_b5
    const/16 v16, 0x1

    goto/16 :goto_2b

    :sswitch_5d
    const-string/jumbo v2, "getPopupsSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    goto/16 :goto_2b

    :cond_b6
    const/16 v16, 0x0

    :goto_2b
    packed-switch v16, :pswitch_data_a

    goto/16 :goto_30

    :pswitch_60
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v13, 0x2

    invoke-virtual {v0, v1, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getCookiesSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_61
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getHttpProxy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_62
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getJavaScriptSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_63
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v13, 0x4

    invoke-virtual {v0, v1, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutoFillSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_64
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPopupsSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_b7
    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a

    :goto_2c
    move/from16 v11, v16

    goto/16 :goto_2d

    :sswitch_5e
    const-string/jumbo v0, "bluetoothLogForRemote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_2c

    :cond_b8
    const/4 v11, 0x6

    goto/16 :goto_2d

    :sswitch_5f
    const-string/jumbo v0, "bluetoothLogForDevice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto :goto_2c

    :cond_b9
    const/4 v11, 0x5

    goto/16 :goto_2d

    :sswitch_60
    const-string/jumbo v0, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto :goto_2c

    :cond_ba
    move v11, v13

    goto/16 :goto_2d

    :sswitch_61
    const-string/jumbo v0, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_2c

    :cond_bb
    const/4 v11, 0x3

    goto/16 :goto_2d

    :sswitch_62
    const-string/jumbo v0, "isBluetoothLogEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto :goto_2c

    :cond_bc
    const/4 v11, 0x2

    goto/16 :goto_2d

    :sswitch_63
    const-string/jumbo v0, "bluetoothLog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto :goto_2c

    :cond_bd
    const/4 v11, 0x1

    goto/16 :goto_2d

    :sswitch_64
    const-string/jumbo v0, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto :goto_2c

    :cond_be
    const/4 v11, 0x0

    :goto_2d
    packed-switch v11, :pswitch_data_b

    goto/16 :goto_30

    :pswitch_65
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v13, 0x3

    if-lt v0, v13, :cond_d0

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_bf

    goto/16 :goto_30

    :cond_bf
    const/16 v17, 0x0

    aget-object v0, v2, v17

    const/16 v18, 0x1

    aget-object v1, v2, v18

    const/16 v19, 0x2

    aget-object v2, v2, v19

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :pswitch_66
    const/16 v19, 0x2

    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_d0

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_30

    :cond_c0
    aget-object v0, v2, v19

    if-nez v0, :cond_c1

    const/16 v17, 0x0

    aget-object v0, v2, v17

    const/16 v18, 0x1

    aget-object v1, v2, v18

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v12}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return-object v12

    :cond_c1
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_c2

    aget-object v0, v2, v17

    aget-object v1, v2, v18

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const/16 v19, 0x2

    aget-object v2, v2, v19

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return-object v12

    :cond_c2
    const-string v0, "BluetoothAdapter is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :pswitch_67
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_c3

    goto/16 :goto_30

    :cond_c3
    const/16 v17, 0x0

    aget-object v0, v2, v17

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PAIRINGALLOWEDBYSECURITY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_68
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_c4

    goto/16 :goto_30

    :cond_c4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_69
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothLogEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_6a
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_d0

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_30

    :cond_c5
    const/16 v17, 0x0

    aget-object v0, v2, v17

    const/16 v18, 0x1

    aget-object v1, v2, v18

    invoke-static {v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :pswitch_6b
    const/16 v17, 0x0

    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_c6

    goto/16 :goto_30

    :cond_c6
    aget-object v0, v2, v17

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_c7
    move v3, v13

    const/4 v4, 0x2

    const/4 v13, 0x4

    const-string/jumbo v0, "bluetooth_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_b

    :goto_2e
    move/from16 v13, v16

    goto/16 :goto_2f

    :sswitch_65
    const-string/jumbo v3, "isOutgoingCallsAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    goto :goto_2e

    :sswitch_66
    const-string/jumbo v4, "isBLEAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    goto :goto_2e

    :cond_c8
    move v13, v3

    goto/16 :goto_2f

    :sswitch_67
    const-string/jumbo v3, "isDiscoverableEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    goto :goto_2e

    :cond_c9
    move v13, v4

    goto/16 :goto_2f

    :sswitch_68
    const-string/jumbo v3, "isDesktopConnectivityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    goto :goto_2e

    :cond_ca
    move/from16 v13, v18

    goto/16 :goto_2f

    :sswitch_69
    const-string/jumbo v3, "isBluetoothEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    goto :goto_2e

    :cond_cb
    const/4 v13, 0x0

    :cond_cc
    :goto_2f
    packed-switch v13, :pswitch_data_c

    goto/16 :goto_30

    :pswitch_6c
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_cd

    goto/16 :goto_30

    :cond_cd
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isOutgoingCallsAllowed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOutgoingCallsAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_6d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBLEAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_6e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_6f
    if-eqz v2, :cond_d0

    invoke-static {v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ce

    goto/16 :goto_30

    :cond_ce
    const/16 v17, 0x0

    aget-object v1, v2, v17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDesktopConnectivityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_70
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isBluetoothEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_cf
    const-string/jumbo v0, "auditlog"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_d0

    if-eqz v1, :cond_d0

    const-string/jumbo v2, "isAuditLogEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_d0
    :goto_30
    return-object v12

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_43
        :pswitch_33
        :pswitch_24
        :pswitch_14
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3edf31d1 -> :sswitch_2
        -0x15a386e9 -> :sswitch_1
        -0xc145ad8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a3a5990 -> :sswitch_10
        -0x562f9482 -> :sswitch_f
        -0x4e3d6d40 -> :sswitch_e
        -0x460411da -> :sswitch_d
        -0x39b5211e -> :sswitch_c
        -0x37226d22 -> :sswitch_b
        -0x30c133a0 -> :sswitch_a
        -0x28516cec -> :sswitch_9
        -0xebe1ca -> :sswitch_8
        0x12bbc810 -> :sswitch_7
        0x5f1771f4 -> :sswitch_6
        0x730fdeab -> :sswitch_5
        0x75020c0f -> :sswitch_4
        0x788dd2ce -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_1f
        -0x57f5d70e -> :sswitch_1e
        -0x55af2a6c -> :sswitch_1d
        -0x42b9a7be -> :sswitch_1c
        -0x3d0295e2 -> :sswitch_1b
        -0x331a660a -> :sswitch_1a
        -0x2873ac11 -> :sswitch_19
        -0x1ad99baa -> :sswitch_18
        -0x53b1dd2 -> :sswitch_17
        0x21990efc -> :sswitch_16
        0x3e90c48d -> :sswitch_15
        0x405a90ec -> :sswitch_14
        0x5bb25232 -> :sswitch_13
        0x6bef28f1 -> :sswitch_12
        0x7c45f31f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
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
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x74a4d725 -> :sswitch_2d
        -0x6c0db8af -> :sswitch_2c
        -0x694bd3d6 -> :sswitch_2b
        -0x553c4d53 -> :sswitch_2a
        -0x4d525a40 -> :sswitch_29
        -0x39e13355 -> :sswitch_28
        -0x2de531be -> :sswitch_27
        -0x1ab59b72 -> :sswitch_26
        -0xa2586fa -> :sswitch_25
        0x5be9d3d -> :sswitch_24
        0x26581d58 -> :sswitch_23
        0x36e6d3e0 -> :sswitch_22
        0x4bd14915 -> :sswitch_21
        0x6c3b6517 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x657fd646 -> :sswitch_3c
        -0x5d9fe8ab -> :sswitch_3b
        -0x5c7edb84 -> :sswitch_3a
        -0x4bfd3947 -> :sswitch_39
        -0x38cefab6 -> :sswitch_38
        -0x36978d55 -> :sswitch_37
        -0x34742384 -> :sswitch_36
        -0x2b582cae -> :sswitch_35
        0x3e05fd -> :sswitch_34
        0x7ed85f2 -> :sswitch_33
        0x2ea4b8a5 -> :sswitch_32
        0x3593cbd4 -> :sswitch_31
        0x4ef9c1f9 -> :sswitch_30
        0x71560275 -> :sswitch_2f
        0x77163a49 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
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
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x4e857510 -> :sswitch_44
        -0xe2e3396 -> :sswitch_43
        0x17f43207 -> :sswitch_42
        0x234b9a81 -> :sswitch_41
        0x48803b14 -> :sswitch_40
        0x4e20b298 -> :sswitch_3f
        0x65054427 -> :sswitch_3e
        0x75f9239b -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x6a3a5990 -> :sswitch_4f
        -0x55af2a6c -> :sswitch_4e
        -0x4e3d6d40 -> :sswitch_4d
        -0x499d26f4 -> :sswitch_4c
        -0x414b3a47 -> :sswitch_4b
        -0x30c133a0 -> :sswitch_4a
        -0x2b582cae -> :sswitch_49
        -0x1ad99baa -> :sswitch_48
        0x5be9d3d -> :sswitch_47
        0x2be8dca6 -> :sswitch_46
        0x5bb25232 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
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
        :pswitch_4c
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_53
        -0x3ecb9a99 -> :sswitch_52
        0x3ba3e2f0 -> :sswitch_51
        0x6f38e3dc -> :sswitch_50
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x51cc33cc -> :sswitch_58
        -0x4d8cc16d -> :sswitch_57
        -0x3c036018 -> :sswitch_56
        -0x374aace4 -> :sswitch_55
        0x692685a1 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x67f870ad -> :sswitch_5d
        -0x499a7018 -> :sswitch_5c
        -0x364e80b3 -> :sswitch_5b
        0x9515810 -> :sswitch_5a
        0x78a801b7 -> :sswitch_59
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x74fa9afd -> :sswitch_64
        -0x5319be4a -> :sswitch_63
        -0x4ebf90df -> :sswitch_62
        -0x3ce44687 -> :sswitch_61
        -0x3a6a65ad -> :sswitch_60
        0x65788769 -> :sswitch_5f
        0x7d586159 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x625ba203 -> :sswitch_69
        -0x11927f68 -> :sswitch_68
        0x52d2774 -> :sswitch_67
        0x3670f097 -> :sswitch_66
        0x6422cbe9 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

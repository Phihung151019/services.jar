.class public final Lcom/android/server/asks/ASKSManagerService;
.super Landroid/content/pm/IASKSManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mASKSDeltaPolicyVersion:Ljava/lang/String; = "00000000"

.field public static mASKSPolicyVersion:Ljava/lang/String; = "00000000"


# instance fields
.field public ASKS_UNKNOWN_LIMIT_CALLPEM:Z

.field public final CA_CERT_PATH:Ljava/lang/String;

.field public final CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field public final EE_CERT_FILE:Ljava/lang/String;

.field public final ROOT_CERT_FILE:Ljava/lang/String;

.field public final SAFE_INSTALL_CERT_PATH:Ljava/lang/String;

.field public final TYPE_MOBILE:I

.field public final TYPE_WIFI:I

.field public installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

.field public isFirstTime:Z

.field public final mASKSStates:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mFile:Landroid/util/AtomicFile;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSessions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/content/pm/IASKSManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    const-string v3, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    const-string v3, "/system/etc/ASKS_INTER_"

    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    const-string v3, "/system/etc/ASKS_EDGE_1.crt"

    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_SAFE_INSTALL.crt"

    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->SAFE_INSTALL_CERT_PATH:Ljava/lang/String;

    iput v2, v1, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    const/4 v3, 0x2

    iput v3, v1, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "security.ASKS.version"

    const-string v6, "9.4 "

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.time_value"

    const-string v6, "00000000"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.policy_version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.delta_policy_version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ADP.version"

    const-string v6, "3.1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ADP.policy_version"

    const-string v6, "20230510"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.smsfilter_enable"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.smsfilter_target"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "security.ASKS.safeinstall.remote.control.enable"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ASKSManager"

    const-string/jumbo v6, "This is KR project. Enable SafeInstall KR."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isGlobalTargetProject()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "This is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "ro.boot.carrierid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " project. Enable SafeInstall Global"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ASKSManager"

    const-string/jumbo v6, "This is not target of SafeInstall"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/.aasa/asks.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v6, Lcom/android/server/asks/PolicyConvert;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v7, "AASA_PolicyConvert "

    iput-object v7, v6, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/asks/PolicyConvert;->convert(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "cannot create the file even it does not exist"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v6, v4

    :goto_1
    new-instance v7, Landroid/util/AtomicFile;

    const-string/jumbo v8, "asks"

    invoke-direct {v7, v5, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    const-string/jumbo v5, "No existing asks rules "

    const-string v8, "AASA_ASKSManager"

    const-string/jumbo v9, "readStateInner() start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v7

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v9, v3, :cond_4

    if-eq v9, v2, :cond_4

    goto :goto_2

    :cond_4
    move v10, v4

    :goto_3
    if-eq v9, v2, :cond_9

    :try_start_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eq v9, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v9, "asks"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "version"

    invoke-interface {v0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    sput-object v9, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string v9, "AASA_ASKSManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "policyVersion :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "security.ASKS.policy_version"

    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move v4, v10

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_6
    const-string/jumbo v9, "safeinstall"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "delta"

    invoke-interface {v0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    sput-object v9, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    const-string v9, "AASA_ASKSManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "safeInstall delta :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "security.ASKS.delta_policy_version"

    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "AASA_ASKSManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    move v10, v2

    :cond_8
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :cond_9
    if-nez v10, :cond_a

    :try_start_6
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_19

    :cond_a
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move v10, v4

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v10, :cond_a

    :try_start_9
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_5

    :catch_3
    :goto_7
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_1a

    :goto_8
    if-nez v4, :cond_b

    :try_start_b
    iget-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_b
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_4
    :try_start_d
    throw v0

    :catch_5
    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_9
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/asks/ASKSManagerService$1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "AASA_ASKSManager"

    if-nez v5, :cond_c

    const-string/jumbo v0, "There are no target file in /system/etc/"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v4

    move/from16 v18, v6

    goto/16 :goto_15

    :cond_c
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/.aasa/AASApolicy/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d
    const-string v0, "/data/system/.aasa/asks.xml"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "::"

    if-eqz v10, :cond_e

    const-string v10, "ASKS file exists."

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ASKS_FILE"

    invoke-static {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string v10, "ASKS_DELTA"

    invoke-static {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "policy version in asks.xml : "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v10, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    array-length v10, v5

    move-object v12, v0

    move v13, v4

    :goto_a
    if-ge v13, v10, :cond_1b

    aget-object v14, v5, v13

    new-instance v0, Ljava/io/File;

    invoke-static {v3, v14}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    invoke-static {v9, v14}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ASKS_RULE_FILE"

    invoke-static {v8, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    const-string/jumbo v4, "RPAB"

    if-eqz v16, :cond_11

    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    const-string/jumbo v5, "There are already exist xml files in /.aasa/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x8

    if-ge v5, v8, :cond_f

    const-string v5, "20"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_f
    invoke-static {v2, v3}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skip, Current "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rule is latest version."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_10

    move-object v12, v3

    :cond_10
    move/from16 v18, v6

    goto/16 :goto_13

    :cond_11
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    :cond_12
    const/16 v3, 0x800

    new-array v5, v3, [B

    :try_start_f
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move/from16 v18, v6

    :goto_b
    const/16 v0, 0x800

    const/4 v15, 0x0

    :try_start_11
    invoke-virtual {v8, v5, v15, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_13

    invoke-virtual {v3, v5, v15, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :cond_13
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    goto :goto_f

    :catch_9
    move-exception v0

    move/from16 v18, v6

    const/4 v3, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    move/from16 v18, v6

    const/4 v3, 0x0

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_f

    :catch_b
    move-exception v0

    move/from16 v18, v6

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_c

    :catch_c
    move-exception v0

    move/from16 v18, v6

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_d

    :goto_c
    :try_start_13
    const-string v5, "IOException"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v8, :cond_14

    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_14
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_e

    :goto_d
    :try_start_15
    const-string v5, "FileNotFoundException"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v8, :cond_15

    :try_start_16
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    :cond_16
    :goto_e
    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v12, v2}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v12, v2

    :cond_17
    const-string/jumbo v0, "there is xml file /system/etc/"

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :goto_f
    if-eqz v8, :cond_18

    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_11

    :cond_18
    :goto_10
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_12
    throw v1

    :cond_1a
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v18, v6

    const-string/jumbo v0, "there is no xml file /system/etc/"

    invoke-static {v0, v14, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_1b
    move/from16 v18, v6

    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sput-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const/4 v15, 0x1

    goto :goto_14

    :cond_1c
    const/4 v15, 0x0

    :goto_14
    const-string v0, "00000000"

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "policy version : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v2, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ASKS.policy_version"

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ASKS.delta_policy_version"

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_ALLOWLIST.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_BLOCKLIST.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANLIST.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANEXCEPTPKG.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANBLOCKPKG.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PRE_INSTALLER.xml"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    :goto_15
    if-eqz v15, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    const/4 v6, 0x1

    goto :goto_16

    :cond_1e
    move/from16 v6, v18

    :goto_16
    if-eqz v6, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    :cond_1f
    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->checkExistUnknownAppList()V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    goto :goto_17

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    const-string v2, "CALLPEMLIMIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    const-string v0, "AASA_ASKSManager"

    const-string/jumbo v1, "enable LIMIT_CALLPEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    const-string v0, "AASA_ASKSManager"

    const-string/jumbo v1, "disable LIMIT_CALLPEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_18
    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :try_start_1a
    throw v0

    :goto_1a
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    throw v0
.end method

.method public static changeStatusForDev(Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V
    .locals 9

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    const-string/jumbo v1, "PackageInformation"

    if-nez v0, :cond_0

    const-string/jumbo p0, "disable DevParm option."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x2c

    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    const-string/jumbo v2, "changeStatusForDev"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "initiatingPackageName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " is changed to "

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changeStatus[init]:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "originatingPackageName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changeStatus[orig]:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changeStatus[downUrl]:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    :cond_3
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changeStatus[PkgName]:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    :cond_4
    const-string/jumbo v2, "permList"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move v6, v5

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "changeStatus[Pem]:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    :cond_6
    const-string/jumbo v2, "servicePermList"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "changeStatus[ServicePem]:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "execute"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "overlay"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "requestInstallerZip"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "initType"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "block"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v2, "blockExecute"

    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "allow"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "allowExecute"

    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v3, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "isInstalledList"

    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_5
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v4, ","

    if-nez v2, :cond_6

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_6
    const-string/jumbo v2, "accessibility"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_7
    const-string/jumbo v2, "hasReqInstallPEM"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_8
    const-string/jumbo v2, "initPkg"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public static checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :cond_1
    const/16 p2, 0x9

    if-eq p0, p2, :cond_2

    const/16 p2, 0xe

    if-eq p0, p2, :cond_2

    const/16 p2, 0xf

    if-eq p0, p2, :cond_2

    const/16 p2, 0x10

    if-ne p0, p2, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "ALL"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v2
.end method

.method public static checkPolicyFileWithDelta(ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v1

    move v3, v2

    :goto_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    const-string/jumbo v6, "PackageInformation"

    if-eqz v5, :cond_0

    const-string/jumbo v5, "base: "

    const-string v7, ", delta: "

    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ge v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "add delta data first."

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V

    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "add base data."

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V

    return-object v0
.end method

.method public static checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;
    .locals 14

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    new-instance v6, Lcom/android/server/asks/RETVALUE;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, " checkTarget sign BEFORE status:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/asks/RETVALUE;->status:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " SA:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " policy="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/android/server/asks/RETVALUE;->policy:I

    const-string/jumbo v8, "PackageInformation"

    invoke-static {v0, v7, v8}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, p1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const-string/jumbo v10, "null"

    if-ge v7, v0, :cond_3

    :try_start_0
    aget-object v0, p1, v7

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/asks/UnknownStore;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    iget v0, v6, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v8, :cond_0

    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v1, v7, v0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    if-nez p7, :cond_1

    iget v0, v6, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v9, :cond_1

    iget-boolean v0, v4, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    invoke-virtual {v1, v5, v3, v0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    :cond_1
    iget v0, v6, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v0, :cond_3

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "ALL"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/asks/UnknownStore;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    iget v0, v6, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v8, :cond_4

    :try_start_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v1, p0, v0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    if-nez p7, :cond_5

    iget p0, v6, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne p0, v9, :cond_5

    iget-boolean p0, v4, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    invoke-virtual {v1, v5, v3, p0, v6}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    :cond_5
    :goto_4
    return-object v6
.end method

.method public static checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    if-nez p1, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    const-string v4, "ALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    array-length v3, p0

    if-ne v3, v5, :cond_5

    aget-object p0, p1, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    array-length p0, p1

    if-ne p0, v5, :cond_1

    goto/16 :goto_b

    :cond_1
    move p0, v5

    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_14

    aget-object v1, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_c

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    aget-object p0, p1, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    move p0, v0

    :goto_1
    array-length v1, p1

    if-ge p0, v1, :cond_17

    aget-object v1, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_b

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_2
    array-length v6, p0

    if-ge v3, v6, :cond_7

    aget-object v6, p0, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move p0, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move p0, v5

    :goto_3
    if-ne p0, v5, :cond_c

    aget-object v1, p1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    array-length v1, p1

    if-ne v1, v5, :cond_8

    goto/16 :goto_b

    :cond_8
    :goto_4
    array-length v1, p1

    if-ge v5, v1, :cond_c

    aget-object v1, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_c

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    aget-object v1, p1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    move p0, v0

    :goto_5
    array-length v1, p1

    if-ge p0, v1, :cond_17

    aget-object v1, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_b

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_c
    return p0

    :cond_d
    aget-object v3, p0, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move v3, v0

    :goto_6
    array-length v6, p0

    if-ge v3, v6, :cond_f

    aget-object v6, p0, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v3, v5

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    move v3, v0

    :goto_7
    if-ne v3, v5, :cond_16

    aget-object v6, p1, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    array-length v4, p1

    if-ne v4, v5, :cond_11

    move p1, v0

    :goto_8
    array-length v2, p0

    if-ge p1, v2, :cond_17

    aget-object v2, p0, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    array-length p0, p1

    if-ge v5, p0, :cond_16

    aget-object p0, p1, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    aget-object p0, p1, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    move p0, v0

    :goto_a
    array-length v1, p1

    if-ge p0, v1, :cond_17

    aget-object v1, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_b
    return v5

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_16
    return v3

    :cond_17
    :goto_c
    return v0

    :cond_18
    :goto_d
    const-string p0, "AASA_ASKSManager"

    const-string p1, "ERROR: checkTokenTarget input is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static convertItoS(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_2

    const/16 v0, 0x65

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x96

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "block1"

    return-object p0

    :cond_1
    const-string/jumbo p0, "warning1"

    return-object p0

    :cond_2
    const-string/jumbo p0, "warning"

    return-object p0

    :cond_3
    const-string/jumbo p0, "block"

    return-object p0

    :cond_4
    :goto_0
    const-string/jumbo p0, "except"

    return-object p0
.end method

.method public static convertMillsToString(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertStoI(Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "warning"

    const-string/jumbo v1, "block"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "warning1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "except"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "block1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    return v3

    :pswitch_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x64

    return p0

    :cond_6
    const/16 p0, 0x65

    return p0

    :pswitch_1
    const/16 p0, 0x8c

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 p0, 0x96

    return p0

    :cond_7
    :goto_1
    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x529f32bc -> :sswitch_4
        -0x4cdcfae7 -> :sswitch_3
        0x597c48d -> :sswitch_2
        0x1db04415 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    move v6, v2

    :goto_1
    if-ltz v5, :cond_1

    const/16 v7, 0x9

    if-gt v5, v7, :cond_1

    add-int/lit8 v5, v5, 0x30

    :goto_2
    int-to-char v5, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x57

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string/jumbo v1, "PackageInformation"

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    const-string/jumbo v2, "delete File : "

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " success"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fail"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is does not exist"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    rem-int/lit16 v2, v0, 0x2710

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static enforceSystemOrRoot()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    rem-int/lit16 v0, v0, 0x2710

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B
    .locals 10

    const-string v0, ""

    const-string v1, "21"

    const-string v2, "AASA_ASKSManager"

    const-string v3, " "

    const-string/jumbo v4, "mTokenName : "

    const-string/jumbo v5, "index : "

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    invoke-interface {v6, v7, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v7, "INDEX"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "NONE"

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, "ENG Cert Index"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v5, "\\."

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    const-string/jumbo v7, "[^0-9]"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v5, v7

    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " SignerVersion : "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v6, "1"

    :cond_1
    const/4 p0, 0x1

    aget-object v0, v5, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "Signer Cert File is not matched with index!"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo v0, "SIGNER"

    aget-object p0, v5, p0

    const/16 v4, 0xc

    invoke-static {v4, v0, p0}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const-string/jumbo p0, "SIGNER is in CRL"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "INTER"

    aget-object v5, v5, v7

    invoke-static {v4, p0, v5}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_4

    const-string p0, "INTER is in CRL"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "PackageInformation"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "failed to created folder related 3RDPARTY"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    move-object v6, v4

    :goto_0
    if-eq v5, v2, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v7, "name"

    if-eqz v5, :cond_4

    :try_start_2
    const-string/jumbo v8, "package"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_6

    const-string/jumbo v8, "policy"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v6, :cond_5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3rdtargetPolicy:: : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    return-object p0

    :cond_5
    move-object v6, v4

    :cond_6
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v4

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v4

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v4

    :goto_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v4
.end method

.method public static getASKSDataFromXML(ILjava/util/HashMap;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2e

    const-string v2, "CERT"

    const-string/jumbo v3, "package"

    if-eq p0, v1, :cond_0

    const-string v1, "DUMMY"

    const-string/jumbo v4, "STORE"

    const-string v5, "HASH"

    const-string v6, "HASHVALUE"

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v1, "TARGET"

    const-string v4, "DEVICE"

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    packed-switch p0, :pswitch_data_1

    const-string/jumbo v6, "PEMLIST"

    const-string v7, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PEMLIST.xml"

    const-string/jumbo v8, "pid"

    const-string/jumbo v9, "contents"

    packed-switch p0, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "VALUE"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DEVPARAM.xml"

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/RPAB2.xml"

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/RPAB1.xml"

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/RPAB.xml"

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_BLOCK_NUM_LIST.xml"

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_BLOCK_URL_LIST.xml"

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo p0, "config"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "value"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml"

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo p0, "REGIONAL"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SIMPLETRUSTEDSTORE.xml"

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TRUSTEDSTORE.xml"

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "policy"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo p0, "TARGETZIP"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v5, v7

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_d
    const-string/jumbo p0, "ZIPCERTTARGET"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo p0, "ZIPTARGET"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_f
    const-string p0, "CERTTARGET"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PRE_INSTALLER_H.xml"

    goto :goto_1

    :pswitch_12
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSW.xml"

    goto :goto_1

    :pswitch_13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "digest"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/protection_list.xml"

    goto :goto_1

    :pswitch_14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSHB.xml"

    goto :goto_1

    :pswitch_15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    goto :goto_1

    :pswitch_16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "NUM"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    goto :goto_1

    :pswitch_17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    goto :goto_1

    :pswitch_18
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "UID"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    goto :goto_1

    :pswitch_19
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PREINSTALLER_GLOBAL.xml"

    :goto_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v4, ""

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-eq v5, v2, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    const/4 v8, 0x3

    if-eq v5, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :goto_6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_c
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

.method public static getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "<asks version=\""

    const-string v2, "\""

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "ASKS_FILE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<VERSION value=\""

    const-string v3, "\"/>"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "ASKS_RULE_FILE"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<safeinstall delta=\""

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASKS_DELTA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    aget-object v1, v1, v4

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    aget-object p0, p0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "Policy version is wrong : "

    const-string v0, "ASKSManager"

    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, "00000000"

    return-object p0
.end method

.method public static getAdvancedHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    :try_start_1
    new-instance v3, Landroid/util/jar/StrictJarFile;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5, v4}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    move v7, v5

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "META-INF/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v10, "SEC-INF/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v10, "token/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v10, "safeInstall"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "AndroidManifest.xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto/16 :goto_9

    :catch_1
    move-exception p0

    goto/16 :goto_7

    :cond_4
    invoke-static {v3, v8, v2}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0xc350

    if-lt v7, v8, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    :cond_6
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object p1, v1

    :goto_3
    move v2, v5

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    new-instance v4, Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v8, v5, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v7

    :try_start_6
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " advanced hash::"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v3, v1

    :goto_7
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_8
    return-object v1

    :goto_9
    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    throw p0
.end method

.method public static getApkFileHashBytes(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1000

    :try_start_1
    new-array p0, p0, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v3, v0

    :goto_1
    :try_start_4
    const-string v1, "AASA_ASKSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ERROR: getApkFileHash:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_1
    throw p0

    :catch_4
    :cond_2
    :goto_3
    return-object v0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0
.end method

.method public static getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10

    const-string v0, " does not exist."

    const-string/jumbo v1, "size = "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "APKFromUnknownSource"

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "noCert"

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :cond_1
    array-length v2, v1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    aget-object v2, v1, v3

    :goto_1
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, v1, v3

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p1, "ASKSManager"

    if-eqz p0, :cond_5

    :try_start_4
    const-string p0, "BigSize File is deleted"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string p0, "BigSize file is not deleted"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_7
    return-void

    :goto_4
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_8
    throw p1
.end method

.method public static getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "name"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v0, "PackageInformation"

    const-string/jumbo v1, "failed to created folder related INFOLIST"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v5, v4, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_0
    if-eq v8, v6, :cond_6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    :cond_3
    :goto_1
    move-object/from16 v9, p1

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_5

    if-eqz v8, :cond_3

    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v4, v2}, Lcom/android/server/asks/ASKSManagerService;->checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v8, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v8}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "signature"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "execute"

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "overlay"

    invoke-interface {v4, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "requestInstallerZip"

    invoke-interface {v4, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "initType"

    invoke-interface {v4, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "accessibility"

    invoke-interface {v4, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v6, "hasReqInstallPEM"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "initPkg"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, p1

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_7
    return-object v3

    :catch_1
    move-exception v0

    move-object v5, v7

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_4
    return-object v7
.end method

.method public static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AASAASKS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "PackageInformation"

    const-string/jumbo v0, "failed to created folder related TAGETDEVICE"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    if-eq v5, v3, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "LIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "TARGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "CERTTARGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "ZIPTARGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "ZIPCERTTARGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "value"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ALL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v4

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v4

    :catch_4
    move-exception p0

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v4

    :goto_6
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v4
.end method

.method public static getTokenContents([B)[B
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x200

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-byte v4, p0, v1

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    const-string p0, "22"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v3, [B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v2

    :goto_1
    new-array v1, v0, [B

    add-int/lit16 v3, v3, 0x201

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static getTrustedFile()[Ljava/lang/String;
    .locals 7

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "getTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/system/.aasa/trustedTime"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ne v5, v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    array-length v2, v4

    if-ne v2, v0, :cond_3

    return-object v4

    :cond_3
    return-object v1

    :goto_4
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_4
    throw v0
.end method

.method public static getTrustedToday()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "security.ASKS.time_value"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getElapsedToday : "

    const-string v2, "AASA_ASKSManager_SECURETIME"

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 51

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "CERT"

    const-string/jumbo v4, "value"

    const-string v5, ""

    if-eqz p3, :cond_0

    const-string/jumbo v6, "_DELTA"

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-string/jumbo v7, "persist.sys.unica.asks"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "_ENG"

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v9, "PackageInformation"

    if-nez v8, :cond_2

    const-string/jumbo v8, "getUnknownAppsData() : ENG Option is enabled."

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v10, 0x1b

    const-string v11, ".xml"

    if-eq v0, v10, :cond_7

    const/16 v10, 0x1c

    if-eq v0, v10, :cond_6

    const/16 v10, 0x1e

    if-eq v0, v10, :cond_5

    const/16 v10, 0x1f

    if-eq v0, v10, :cond_4

    const/16 v10, 0x2d

    if-eq v0, v10, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_GLOBAL"

    invoke-static {v0, v6, v7, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_WEB"

    invoke-static {v0, v6, v7, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_A11Y"

    invoke-static {v0, v6, v7, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST"

    invoke-static {v0, v6, v7, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_COMMON"

    invoke-static {v0, v6, v7, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_38

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "failed to created folder related TOTALLIST"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v7, v10}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1f

    :cond_a
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v11, v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v5

    move-object/from16 v27, v15

    move-object/from16 v28, v27

    move v13, v10

    move v14, v13

    move/from16 v19, v14

    move/from16 v20, v19

    move/from16 v30, v20

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v33, v32

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v36, 0x0

    :goto_3
    if-eq v0, v7, :cond_37

    const-string/jumbo v7, "package"

    const/4 v8, 0x2

    if-eq v0, v8, :cond_f

    const/4 v8, 0x3

    if-eq v0, v8, :cond_d

    const/4 v8, 0x4

    if-eq v0, v8, :cond_b

    goto/16 :goto_6

    :cond_b
    if-eqz v13, :cond_c

    if-eqz v14, :cond_c

    if-eqz v15, :cond_c

    if-eqz v17, :cond_c

    :try_start_2
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v21

    if-eqz v12, :cond_c

    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v12, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/asks/UnknownStore;->addCertPolicy(Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v16

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v26, -0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v39, v11

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    move-object/from16 v39, v11

    goto/16 :goto_1e

    :cond_c
    :goto_4
    move-object/from16 v38, v3

    move-object/from16 v48, v4

    move-object/from16 v39, v11

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_5
    const/16 v37, 0x1

    goto/16 :goto_1c

    :cond_d
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v12, :cond_e

    invoke-virtual {v2, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v38, v3

    move-object/from16 v48, v4

    move-object/from16 v39, v11

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    goto :goto_5

    :cond_e
    :goto_6
    move-object/from16 v38, v3

    move-object/from16 v48, v4

    move-object/from16 v39, v11

    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_5

    :cond_f
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    invoke-interface {v6, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    :cond_10
    const/4 v8, 0x0

    invoke-interface {v6, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "ALL"

    if-eqz v0, :cond_13

    :try_start_3
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v28, "unknown"

    :goto_7
    move-object/from16 v38, v3

    move-object/from16 v29, v28

    const/16 v21, 0x0

    move-object/from16 v28, v15

    goto :goto_8

    :cond_11
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v28, "signature"

    goto :goto_7

    :cond_12
    const-string/jumbo v28, "permission"
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :cond_13
    move-object/from16 v38, v3

    move-object/from16 v29, v28

    const/16 v21, 0x0

    move-object/from16 v28, v27

    :goto_8
    const-string/jumbo v3, "reported"

    move-object v0, v10

    const-string/jumbo v10, "applyPolicy"

    move-object/from16 v39, v11

    const-string/jumbo v11, "SA"

    move-object/from16 v24, v12

    const-string/jumbo v12, "policy"

    move/from16 v27, v13

    const-string/jumbo v13, "block"

    move/from16 v40, v14

    const-string/jumbo v14, "URL"

    move-object/from16 v41, v7

    const-string/jumbo v7, "nonURL"

    const/16 v42, 0x1f5

    const/16 v43, 0x1f7

    const/16 v44, 0x1f6

    const/16 v45, 0x1f4

    if-eqz v15, :cond_24

    :try_start_4
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_24

    move-object/from16 v46, v15

    const/4 v1, 0x0

    invoke-interface {v6, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_15

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/UnknownStore;

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_1d

    :catch_3
    move-exception v0

    goto/16 :goto_1e

    :cond_14
    new-instance v0, Lcom/android/server/asks/UnknownStore;

    invoke-direct {v0}, Lcom/android/server/asks/UnknownStore;-><init>()V

    goto :goto_9

    :cond_15
    move-object/from16 v1, v24

    :goto_a
    if-eqz v1, :cond_16

    iput-object v15, v1, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    :cond_16
    const/4 v2, 0x0

    invoke-interface {v6, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    const-string/jumbo v0, "MIN"

    invoke-interface {v6, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v40, v0

    const-string/jumbo v0, "MAX"

    invoke-interface {v6, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v24, :cond_23

    if-eqz v40, :cond_23

    if-eqz v0, :cond_23

    move-object/from16 v47, v0

    invoke-interface {v6, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v4

    invoke-interface {v6, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v49, v15

    const-string/jumbo v15, "applyOption"

    invoke-interface {v6, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v50, v3

    const-string/jumbo v3, "moreRule"

    invoke-interface {v6, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move/from16 v22, v42

    goto :goto_b

    :cond_17
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    move/from16 v22, v44

    goto :goto_b

    :cond_18
    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v22, v43

    goto :goto_b

    :cond_19
    move/from16 v22, v45

    :goto_b
    if-eqz v4, :cond_1c

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v23, v42

    goto :goto_c

    :cond_1a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move/from16 v23, v44

    goto :goto_c

    :cond_1b
    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v23, v43

    goto :goto_c

    :cond_1c
    move/from16 v23, v45

    :goto_c
    if-eqz v15, :cond_1f

    const-string v0, "AND"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v2, 0x0

    invoke-interface {v6, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/asks/UnknownStore;->addPermissionGroup(Z)V

    move/from16 v2, v21

    goto :goto_d

    :cond_1d
    move/from16 v2, v21

    invoke-virtual {v1, v2}, Lcom/android/server/asks/UnknownStore;->addPermissionGroup(Z)V

    goto :goto_d

    :cond_1e
    move/from16 v2, v21

    const-string/jumbo v0, "store is null !!"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    const/16 v33, 0x1

    goto :goto_e

    :cond_1f
    move/from16 v2, v21

    move/from16 v33, v2

    :goto_e
    if-eqz v3, :cond_22

    const-string v0, " "

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v15, 0x2

    if-ne v4, v15, :cond_22

    const/16 v37, 0x1

    aget-object v4, v3, v37

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    aget-object v4, v3, v37

    const-string/jumbo v15, "except"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    aget-object v4, v3, v37

    const-string/jumbo v15, "warning"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    const/16 v37, 0x1

    goto :goto_f

    :cond_21
    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v37, 0x1

    goto :goto_10

    :goto_f
    aget-object v3, v3, v37

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v3
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v34, v0

    move/from16 v35, v3

    goto :goto_10

    :cond_22
    const/16 v37, 0x1

    const/16 v34, 0x0

    const/16 v35, -0x1

    :goto_10
    :try_start_5
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_11
    move-object/from16 v16, v1

    move/from16 v21, v31

    move/from16 v40, v37

    goto :goto_12

    :catch_4
    move-exception v0

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numberformat exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_11

    :cond_23
    move-object/from16 v50, v3

    move-object/from16 v48, v4

    move-object/from16 v49, v15

    move/from16 v2, v21

    const/16 v37, 0x1

    goto :goto_11

    :cond_24
    move-object/from16 v50, v3

    move-object/from16 v48, v4

    move-object/from16 v46, v15

    move/from16 v2, v21

    const/16 v37, 0x1

    move-object/from16 v49, v0

    move-object/from16 v16, v24

    move/from16 v21, v31

    :goto_12
    const-string/jumbo v1, "name"

    if-eqz v40, :cond_31

    if-eqz v46, :cond_31

    move-object/from16 v3, v41

    move-object/from16 v4, v46

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v3, 0x0

    invoke-interface {v6, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v50

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "rgxUrl"

    invoke-interface {v6, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v10, :cond_27

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move/from16 v22, v42

    goto :goto_13

    :cond_25
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    move/from16 v22, v44

    goto :goto_13

    :cond_26
    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    move/from16 v22, v43

    goto :goto_13

    :cond_27
    move/from16 v22, v45

    :goto_13
    if-eqz v11, :cond_2a

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_14

    :cond_28
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    move/from16 v42, v44

    goto :goto_14

    :cond_29
    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move/from16 v42, v43

    goto :goto_14

    :cond_2a
    move/from16 v42, v45

    :goto_14
    if-eqz v15, :cond_2c

    const-string v3, "DOMAIN"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move/from16 v26, v43

    goto :goto_15

    :cond_2b
    const-string/jumbo v3, "PKG"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move/from16 v26, v44

    goto :goto_15

    :cond_2c
    move/from16 v26, v45

    :goto_15
    if-eqz v25, :cond_2d

    invoke-static/range {v25 .. v25}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v20
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2d
    if-eqz v0, :cond_2e

    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_16

    :catch_5
    move-exception v0

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PKG SA numberformat exception"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_2e
    move/from16 v19, v45

    :goto_16
    const-string/jumbo v0, "execute"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x1f8

    :goto_17
    move/from16 v18, v0

    goto :goto_18

    :cond_2f
    const/16 v0, 0x1f9

    goto :goto_17

    :cond_30
    move/from16 v18, v45

    :goto_18
    move/from16 v27, v37

    move/from16 v24, v42

    move/from16 v0, v18

    move/from16 v3, v19

    move/from16 v7, v20

    move/from16 v23, v22

    move-object/from16 v8, v25

    move/from16 v10, v26

    goto :goto_19

    :cond_31
    move-object/from16 v4, v46

    :cond_32
    move/from16 v24, v23

    move/from16 v0, v18

    move/from16 v3, v19

    move/from16 v7, v20

    move-object/from16 v8, v25

    move/from16 v10, v26

    move/from16 v23, v22

    :goto_19
    if-eqz v40, :cond_36

    if-eqz v4, :cond_36

    const-string/jumbo v11, "pem"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    const/4 v11, 0x0

    invoke-interface {v6, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz v16, :cond_34

    const/16 v18, 0x1

    move/from16 v31, p3

    move/from16 v20, v30

    move/from16 v19, v32

    move/from16 v25, v33

    move-object/from16 v26, v34

    move/from16 v27, v35

    move-object/from16 v30, v36

    invoke-virtual/range {v16 .. v31}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_33
    move/from16 v35, v27

    goto :goto_1a

    :cond_34
    move/from16 v20, v30

    move/from16 v19, v32

    move/from16 v25, v33

    move-object/from16 v26, v34

    move-object/from16 v30, v36

    goto :goto_1a

    :cond_35
    move/from16 v20, v30

    move/from16 v19, v32

    move/from16 v25, v33

    move-object/from16 v26, v34

    move/from16 v27, v35

    move-object/from16 v30, v36

    if-eqz v16, :cond_33

    const/16 v18, 0x0

    move/from16 v31, p3

    invoke-virtual/range {v16 .. v31}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v35, v27

    :goto_1a
    move/from16 v18, v0

    move-object v15, v4

    move-object/from16 v12, v16

    move/from16 v32, v19

    move/from16 v31, v21

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v33, v25

    move-object/from16 v34, v26

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v36, v30

    move/from16 v13, v37

    :goto_1b
    move/from16 v14, v40

    move/from16 v19, v3

    move-object/from16 v25, v8

    move/from16 v26, v10

    move/from16 v30, v20

    move-object/from16 v10, v49

    move/from16 v20, v7

    goto :goto_1c

    :cond_36
    move/from16 v20, v30

    move/from16 v19, v32

    move/from16 v25, v33

    move-object/from16 v26, v34

    move-object/from16 v30, v36

    const/4 v11, 0x0

    move/from16 v18, v0

    move-object v15, v4

    move-object/from16 v12, v16

    move/from16 v32, v19

    move/from16 v31, v21

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v33, v25

    move-object/from16 v34, v26

    move/from16 v13, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v36, v30

    goto :goto_1b

    :goto_1c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, v37

    move-object/from16 v3, v38

    move-object/from16 v11, v39

    move-object/from16 v4, v48

    goto/16 :goto_3

    :cond_37
    move-object/from16 v39, v11

    invoke-virtual/range {v39 .. v39}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1f

    :goto_1d
    :try_start_a
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :goto_1e
    :try_start_b
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_38
    :goto_1f
    return-void
.end method

.method public static hasTrustedTime()Z
    .locals 1

    const-string v0, "/data/system/.aasa/trustedTime"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .locals 12

    const-string v0, " ERROR: AASA_ASKSIsToken "

    const-string v1, "AASA_ASKSManager"

    const-string/jumbo v2, "META-INF"

    const-string/jumbo v3, "SEC-INF"

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/util/jar/StrictJarFile;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v4, v7}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v10, "buildConfirm.crt"

    const-string/jumbo v11, "buildinfo"

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    :goto_0
    move v4, v7

    goto :goto_4

    :goto_1
    move-object v5, v6

    goto/16 :goto_9

    :goto_2
    move-object v5, v6

    goto :goto_5

    :goto_3
    move-object v5, v6

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :goto_4
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->close()V

    return v4

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_7

    :goto_5
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    :goto_6
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_8

    :goto_7
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_3

    goto :goto_6

    :cond_3
    :goto_8
    return v4

    :goto_9
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_4
    throw p0
.end method

.method public static isAutoTimeEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "isAutoTimeEnabled : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "context is null. "

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "auto_time"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    const-string/jumbo p0, "isAutoTimeEnabled : ON"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "isAutoTimeEnabled : OFF"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static isDevDevice()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalTargetProject()Z
    .locals 14

    const-string/jumbo v10, "S02"

    const-string/jumbo v11, "S06"

    const-string/jumbo v0, "THL"

    const-string/jumbo v1, "MYM"

    const-string/jumbo v2, "XSP"

    const-string/jumbo v3, "SIN"

    const-string/jumbo v4, "STH"

    const-string/jumbo v5, "MM1"

    const-string/jumbo v6, "XME"

    const-string/jumbo v7, "XXV"

    const-string v8, "CAM"

    const-string v9, "LAO"

    const-string/jumbo v12, "S09"

    const-string/jumbo v13, "S10"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ro.boot.carrierid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Carrier ID : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageInformation"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isKorProject()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I
    .locals 10

    const-string v8, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    const-string v9, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    const-string v0, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    const-string v2, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    const-string v3, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    const-string v4, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    const-string v5, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    const-string v6, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    const-string v7, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_2

    move v4, v2

    move v5, v3

    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_3

    aget-object v6, p1, v4

    if-eqz v6, :cond_1

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_1

    aget-object v7, v0, v6

    aget-object v8, p1, v4

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v3

    :cond_3
    if-ne v5, v3, :cond_5

    const-string v0, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    :goto_3
    array-length v0, p1

    if-ge v2, v0, :cond_5

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xd

    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " signValue is same with "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AASA_ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return v5
.end method

.method public static isValidZipFormat(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PackageInformation"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_d

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-nez p0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const/16 v6, 0xf

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v4, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :goto_2
    move-object v2, v4

    goto/16 :goto_c

    :catch_0
    :goto_3
    move-object v2, v4

    goto :goto_6

    :catch_1
    :goto_4
    move-object v2, v4

    goto :goto_9

    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move v2, v1

    :goto_5
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move v1, v2

    goto :goto_b

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto :goto_2

    :catch_3
    move-object v5, v2

    goto :goto_3

    :catch_4
    move-object v5, v2

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v2

    goto :goto_c

    :catch_5
    move-object v5, v2

    goto :goto_6

    :catch_6
    move-object v5, v2

    goto :goto_9

    :goto_6
    :try_start_5
    const-string/jumbo p0, "Non-Valid Format[2]"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_7

    :catch_7
    move v3, v1

    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    :goto_8
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_5
    move v1, v3

    goto :goto_b

    :catchall_3
    move-exception p0

    goto :goto_c

    :goto_9
    :try_start_8
    const-string/jumbo p0, "Non-Valid Format[1]"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move v3, v1

    :cond_6
    :goto_a
    if-eqz v5, :cond_5

    goto :goto_8

    :catch_9
    :goto_b
    return v1

    :goto_c
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_7
    if-eqz v5, :cond_8

    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_8
    throw p0

    :cond_9
    :goto_d
    return v1
.end method

.method public static isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ASKSManager"

    const-string/jumbo v0, "Policy version is wrong."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)V
    .locals 7

    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v3, v2, [B

    if-eqz v1, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(md) : TinyAASA + No RUN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(md) : TinyAASA + No IO "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :goto_3
    return-void
.end method

.method public static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)V
    .locals 4

    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(B) : No RUN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(B) : No IO "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :goto_4
    return-void
.end method

.method public static parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    return-void
.end method

.method public static parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-eq v2, v1, :cond_1

    const-string/jumbo v1, "this is an exceptional case"

    const-string v2, "AASA_ASKSManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public static readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "datelimit"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo p2, "version"

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v3, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string/jumbo v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    if-nez v1, :cond_3

    move v4, v5

    :cond_3
    or-int/2addr v4, v6

    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "REVOKE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    :cond_5
    iput-object p2, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    :cond_6
    :goto_1
    return-void
.end method

.method public static setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V
    .locals 9

    const-string/jumbo v0, "package"

    const-string v1, "LIST"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo p0, "PackageInformation"

    const-string/jumbo v0, "failed to created file related INFOLIST"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v4, "UTF-8"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p0, :cond_1

    const/4 v4, 0x0

    :goto_0
    move-object v6, p0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "signature"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "execute"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "overlay"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "requestInstallerZip"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "initType"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "accessibility"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "hasReqInstallPEM"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "initPkg"

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    invoke-interface {v2, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_1
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0
.end method

.method public static setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    const-string/jumbo v3, "UTF-8"

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string/jumbo v6, "PackageInformation"

    if-eqz v5, :cond_9

    const-string/jumbo v9, "initPkg"

    const-string/jumbo v10, "hasReqInstallPEM"

    const-string/jumbo v11, "accessibility"

    const-string/jumbo v12, "initType"

    const-string/jumbo v13, "requestInstallerZip"

    const-string/jumbo v14, "overlay"

    const-string/jumbo v15, "execute"

    const-string/jumbo v8, "package"

    move-object/from16 v16, v7

    const-string/jumbo v7, "signature"

    move-object/from16 v17, v2

    const-string/jumbo v2, "name"

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    :try_start_2
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v0, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v0, v14, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v0, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v0, v11, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    invoke-interface {v0, v10, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    invoke-interface {v0, v9, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    move-object v6, v5

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :goto_0
    move-object v1, v0

    move-object/from16 v5, v16

    goto/16 :goto_a

    :catch_0
    move-exception v0

    :goto_1
    move-object/from16 v5, v16

    goto/16 :goto_8

    :cond_1
    const/4 v3, 0x2

    const/16 v19, 0x0

    if-ne v0, v3, :cond_5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object/from16 v20, v6

    move/from16 v3, v19

    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    move-object/from16 v21, v5

    const/4 v5, 0x1

    if-ne v6, v5, :cond_4

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p0, v0

    iget-object v0, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v0, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v0, v14, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v0, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v0, v11, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    invoke-interface {v0, v10, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    invoke-interface {v0, v9, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v21

    invoke-interface {v6, v0, v5}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_6

    :cond_2
    move-object/from16 v6, v21

    const-string v0, "Element tempNode is null"

    move-object/from16 v5, v20

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_4

    :cond_4
    move-object/from16 p0, v0

    goto :goto_3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v20, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_5
    move-object v6, v5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move/from16 v5, v19

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v7, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string/jumbo v1, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "indent"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "encoding"

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_7

    :cond_9
    move-object v5, v6

    move-object/from16 v16, v7

    const-string v0, "Element root is null"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_a

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_a
    :goto_9
    return-void

    :goto_a
    if-eqz v5, :cond_b

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_b
    throw v1
.end method

.method public static setSafeInstallResult(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x82

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "PackageInformation"

    const-string/jumbo v0, "SafeInstallResult(): This is V OS global project."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method public static setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p5, "signature"

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v0, p5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "initiatingPackageName"

    invoke-virtual {v0, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "originatingPackageName"

    invoke-virtual {v0, p0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "url"

    invoke-virtual {v0, p0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "asksVersion"

    sget-object p5, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "policyFile"

    iget-object p2, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "policy"

    invoke-virtual {v0, p0, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->tagName:Ljava/lang/String;

    const-string/jumbo p2, "tagName"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "moreRulesRandomPackage"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "moreRulesMalformed"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "moreRulesRank"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p10}, Lcom/android/server/asks/ASKSManagerService;->isValidZipFormat(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "malformed"

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo p0, "carrierID"

    invoke-virtual {v0, p0, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "koreaTarget"

    invoke-static {p12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p0, p3

    new-array p0, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_2

    aget-object p5, p3, p2

    const-string/jumbo p6, "android.permission."

    const-string p7, ""

    invoke-virtual {p5, p6, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, ","

    invoke-static {p2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "permissionList"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "servicePermissionList"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    iget-object p2, p1, Lcom/android/server/asks/RETVALUE;->eventNameForSA:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/asks/RETVALUE;->SA:I

    int-to-long p3, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static setTrustTimeByToken(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 p0, 0x3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    return-void
.end method

.method public static setTrustedFile(IJJ)V
    .locals 7

    const-string v0, ","

    const-string/jumbo v1, "setTrustedTime() "

    const-string v2, ""

    const-string v3, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v4, "setTrustedFile : "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "security.ASKS.time_value"

    invoke-static {p1, p2}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/PrintWriter;

    const-string v6, "/data/system/.aasa/trustedTime"

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw p0
.end method

.method public static supportSafeInstallToken(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Token] supportCountry : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PackageInformation"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    const-string/jumbo p0, "countryISO : ALL"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "countryISO contains"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static updateSmsFilterFeatures()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x28

    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    const/16 v2, 0x27

    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v1, "security.ASKS.smsfilter_enable"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x26

    invoke-static {v4, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    const-string/jumbo v4, "target_model"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const-string/jumbo v0, "security.ASKS.smsfilter_target"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateTrustedFile()V
    .locals 8

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "updateTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    invoke-static {v1, v2, v3, v6, v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    :cond_0
    return-void
.end method

.method public static writeBlockApkList(Ljava/lang/String;)V
    .locals 6

    const-string v0, "AASA_ASKSManager"

    const-string/jumbo v1, "writeBlockApkList() Fail "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/blockedList.log"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    const-string/jumbo p0, "writeBlockApkList() Success"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw p0
.end method


# virtual methods
.method public final SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V
    .locals 7

    if-eqz p4, :cond_5

    const-string/jumbo v0, "isInstalledList"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"

    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    const-string v4, "APKFromUnknownSource"

    if-gez v1, :cond_1

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml adding."

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml init.."

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    iget-boolean v0, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    if-eq v0, v3, :cond_2

    const-wide/16 v0, 0xbea

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p4, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    const/16 v0, 0x96

    iput v0, p1, Lcom/android/server/asks/RETVALUE;->policy:I

    :cond_2
    iget-boolean p1, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    if-eqz p1, :cond_3

    iget-object p1, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string/jumbo p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-le p2, v3, :cond_3

    const-string p2, "K"

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p4, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    const-string p2, "3rdParty"

    const-string/jumbo p3, "kakao"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo p0, "PackageInformation"

    const-string/jumbo p1, "abnormal SAreport"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V
    .locals 9

    :try_start_0
    new-instance v0, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v0}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    iget p2, p3, Lcom/android/server/asks/RETVALUE;->isExecute:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x1f9

    const-string/jumbo v1, "block"

    const-string/jumbo v3, "allow"

    if-ne p2, p3, :cond_0

    move-object p2, v3

    goto :goto_0

    :cond_0
    move-object p2, v3

    move-object v3, v1

    :goto_0
    :try_start_1
    const-string/jumbo p3, "except"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const-string/jumbo p2, "false"

    const-string/jumbo p3, "true"

    if-eqz p5, :cond_2

    move-object v5, p3

    goto :goto_2

    :cond_2
    move-object v5, p2

    :goto_2
    if-eqz p6, :cond_3

    move-object v7, p3

    goto :goto_3

    :cond_3
    move-object v7, p2

    :goto_3
    if-eqz p7, :cond_4

    move-object v8, p3

    :goto_4
    move-object v1, p1

    move-object v6, p4

    goto :goto_5

    :cond_4
    move-object v8, p2

    goto :goto_4

    :goto_5
    :try_start_2
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-void
.end method

.method public final applyExecutePolicy()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "blockExecute"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v2, "allowExecute"

    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "PackageInformation"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "B::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v5, v6

    invoke-static {v7, v8, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v0, v5, v4}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "A::"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, v5

    invoke-static {v6, v7, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public final applyScpmPolicy()Z
    .locals 17

    const-string/jumbo v1, "security.ASKS.delta_policy_version"

    const-string/jumbo v2, "security.ASKS.policy_version"

    const-string v3, "/data/system/.aasa/ASKS.zip"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "PackageInformation"

    if-eqz v0, :cond_9

    new-instance v6, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v6}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    new-instance v7, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v7, v6}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    const-string/jumbo v0, "abnormal version format. "

    const-string/jumbo v8, "try Base policy update from "

    const-string/jumbo v9, "try Delta policy update from "

    const-string v10, "/system/etc/security/askscerts.zip"

    const-string v11, "AASA_RuleUpdateForSecurity_RUFS"

    const-string/jumbo v12, "start to check verification"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    const/4 v13, 0x2

    :try_start_0
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v14, v10, v15}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V

    const-string/jumbo v10, "Success to verify SCPM policy file"

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/asks/RuleUpdateForSecurity;->getScpmPolicyVersion()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, "_"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    if-eqz v14, :cond_3

    iput-boolean v12, v6, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    array-length v15, v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v15, v13, :cond_0

    :try_start_1
    aget-object v15, v14, v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v16, 0x0

    :try_start_2
    const-string v5, "D"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-boolean v12, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    aget-object v0, v14, v16

    iput-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    goto :goto_2

    :catch_3
    move-exception v0

    const/16 v16, 0x0

    goto :goto_3

    :cond_0
    const/16 v16, 0x0

    :cond_1
    array-length v5, v14

    if-ne v5, v13, :cond_2

    aget-object v5, v14, v12

    const-string v9, "B"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v5, v16

    iput-boolean v5, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    aget-object v0, v14, v5

    iput-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    :goto_1
    invoke-virtual {v7, v15}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    const-string/jumbo v5, "Signature verification is failed."

    invoke-static {v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    :goto_3
    const-string v5, "IOException is occurred."

    invoke-static {v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :goto_4
    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_4

    move v5, v12

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_5

    const-string/jumbo v0, "updatePolicyFromSCPM: enforced fail"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    invoke-virtual {v7, v13, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(ILjava/lang/String;)Z

    move-result v5

    :goto_6
    if-eqz v5, :cond_8

    iget-boolean v0, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    const-string v3, "AASA_ASKSManager_RUFS"

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "policy(D) update to   "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    iget-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "policy(B) update to   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string/jumbo v0, "adding delta version to asks.xml"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    move v5, v12

    goto :goto_8

    :cond_7
    const-string v0, "Fail to update SCPM policy."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v5, 0x0

    :goto_8
    return v5

    :cond_9
    const-string/jumbo v0, "SCPM file does not exist"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return v16
.end method

.method public final applyScpmPolicyFromService(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "Only the system can claim applyScpmPolicyFromApp"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageInformation"

    const-string/jumbo v1, "success to apply Scpm Policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkASKSTarget(I)[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " checkASKSTarget type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AASA_ASKSManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isUpdatedSystemApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkDevice Target app :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    :try_start_0
    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is in Blist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v3

    const-string/jumbo v1, "return value["

    const-string/jumbo v2, "]:"

    invoke-static {v3, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-object p0

    :cond_8
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B
    .locals 12

    const-string v0, ".crt"

    const-string v1, "22"

    const-string v2, "AASA_ASKSManager"

    const-string v3, "ERROR: SignerCert is not verified by CACert "

    const-string v4, "ERROR: CACert is not verified by RootCert "

    const-string v5, "ERROR: rootCert is not verified "

    const-string/jumbo v6, "Look at system File. "

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v8, "x.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v8, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v10, v7

    :goto_0
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {v8, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-object v10, v0

    :goto_1
    :try_start_5
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p1, "signerCert is verificated!"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    invoke-virtual {v8, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {v9, p3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string p3, "CAcert is verificated!"

    invoke-static {v2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p0, "rootCert is verificated!"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    return-object p2

    :catch_2
    move-exception p0

    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :catch_3
    move-object v7, p1

    goto :goto_2

    :catch_4
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    return-object p0

    :catch_5
    move-object v7, v10

    goto :goto_2

    :catch_6
    move-exception p0

    :try_start_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    return-object p0

    :catch_7
    move-object v7, v0

    :catch_8
    :goto_2
    const-string/jumbo p0, "Token is NOT verificated in CheckCRL!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_0

    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_3

    :catch_9
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V
    .locals 7

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    const-string v0, "ALLOWSELFUPDATE"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    :cond_0
    const-string v0, "BLOCKSELFUPDATEwithPEM"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    :cond_1
    const-string/jumbo v0, "MALFORMED"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    :cond_2
    const-string v0, "CALLPEMLIMIT"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    :goto_0
    const-string/jumbo p0, "MCCKORONLY"

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    :cond_4
    const-string/jumbo p0, "TABLETEXCEPT"

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    :cond_5
    const-string/jumbo p0, "REQUEST_INSTALL"

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    :cond_6
    const-string/jumbo p0, "PackageInformation"

    if-eqz p4, :cond_7

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "zip case:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " by self update"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    if-eqz p3, :cond_8

    const-string/jumbo p4, "WEB"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "This is Web case:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    invoke-static {p0, p4, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_8
    if-eqz p3, :cond_9

    const-string/jumbo p4, "ZIP"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "This is zip case:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    invoke-static {p0, p3, p4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_9
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    const/4 p4, 0x0

    if-eqz p3, :cond_13

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    const-string v0, "HTTPS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v3, "www"

    const/4 v4, 0x4

    const-string/jumbo v5, "http"

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_a
    const-string v0, "HTTP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_b
    const-string/jumbo v0, "http://www"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v6, "http://"

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_c
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "https"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_d
    invoke-static {v6, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_e
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, p4

    :goto_2
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_f
    move-object p3, p4

    :cond_10
    :goto_3
    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    if-eqz p3, :cond_12

    const-string v0, "(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])"

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move v0, v2

    :goto_4
    if-eqz v0, :cond_11

    const-string v3, "IP:"

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    const-string/jumbo v3, "Not IP:"

    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    move v0, v2

    :goto_5
    iput-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->hashDomain:Ljava/lang/String;

    :cond_13
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p3

    if-lez v0, :cond_14

    :try_start_2
    aget-object p3, p3, v2

    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p3

    iput-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_14
    :goto_6
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    if-eqz p3, :cond_15

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result p3

    if-eqz p3, :cond_16

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pkgSigHash::"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    invoke-static {p3, v0, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    iput-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    :cond_16
    :goto_7
    iput-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move p3, v2

    :goto_8
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    array-length v3, v0

    if-ge p3, v3, :cond_18

    aget-object v0, v0, p3

    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    goto :goto_9

    :cond_17
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_18
    :goto_9
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    if-eqz p3, :cond_1a

    move p3, v2

    :goto_a
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    array-length v3, v0

    if-ge p3, v3, :cond_1a

    aget-object v0, v0, p3

    const-string/jumbo v3, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    goto :goto_b

    :cond_19
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_1a
    :goto_b
    const-string/jumbo p3, "initType"

    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1f

    move v0, v2

    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1b

    aget-object v5, v3, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    iget-object v4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1e

    aget-object v5, v3, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1c
    aget-object p3, v3, v1

    const-string/jumbo v0, "except"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "installer:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-static {p3, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_d

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    :goto_d
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    if-nez p3, :cond_22

    if-eqz v2, :cond_22

    const-string/jumbo p3, "requestInstallerZip"

    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_22

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    :cond_21
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    :cond_22
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    if-nez p3, :cond_25

    if-eqz v2, :cond_25

    const-string/jumbo p3, "accessibility"

    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_25

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_25

    :cond_24
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    :cond_25
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    if-nez p3, :cond_28

    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    if-eqz p3, :cond_28

    if-eqz v2, :cond_28

    const-string/jumbo p3, "hasReqInstallPEM"

    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_28

    iget-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    if-eqz p4, :cond_26

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_27

    :cond_26
    iget-object p2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    if-eqz p2, :cond_28

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    :cond_27
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    :cond_28
    const/16 p2, 0x1c

    iput p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-object p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    const/16 p4, 0x1e

    const/16 v0, 0x1f

    const-string v1, "ALL"

    const/16 v2, 0x1a

    if-nez p2, :cond_2b

    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    if-eqz p2, :cond_29

    goto :goto_e

    :cond_29
    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    if-eqz p2, :cond_2f

    const-string/jumbo p2, "changed By IP"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, p0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2a
    iput v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    goto :goto_10

    :cond_2b
    :goto_e
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, p2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    iget-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "changed By zip"

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_2c
    iget-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "changed By A11Y"

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_f
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2e
    iput p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    :cond_2f
    :goto_10
    iget p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    if-eq p0, p4, :cond_31

    if-eq p0, v0, :cond_30

    const-string/jumbo p0, "TOTALLIST"

    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    goto :goto_11

    :cond_30
    const-string/jumbo p0, "TOTALLIST_WEB"

    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    goto :goto_11

    :cond_31
    const-string/jumbo p0, "TOTALLIST_A11Y"

    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    :goto_11
    return-void
.end method

.method public final checkDeletableListForASKS()V
    .locals 13

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const-string v1, "AASA_ASKSManager_DELETABLE"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    iget-object v6, v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v7, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "a app deleted by the restricted policy. the date is expired ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v11

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "does not found delete target - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    const-string/jumbo v4, "NumberFormatException ::"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "ERROR::: Unknown caller"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkExistUnknownAppList()V
    .locals 18

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v1, "PackageInformation"

    const-string/jumbo v0, "info_list not exists"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_LIST.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "Installed Unknown app list : "

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    new-instance v9, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v9}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v16, "false"

    const-string/jumbo v17, "false"

    const-string/jumbo v12, "allow"

    const-string/jumbo v13, "block"

    const-string/jumbo v14, "false"

    const-string/jumbo v15, "warning"

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "installed_list File is deleted"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "installed_list File is not deleted"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/UnknownSourceAppList.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v6, v7

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v7, v6

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    move v6, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object/from16 v7, p0

    :try_start_5
    iget-object v0, v7, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v9, 0x8000000

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    const-string v9, ""

    if-eqz v0, :cond_5

    array-length v10, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    const-string/jumbo v10, "allow"

    const-string/jumbo v11, "block"

    const-string/jumbo v12, "false"

    const-string/jumbo v13, "warning"

    const-string/jumbo v14, "false"

    const-string/jumbo v15, "false"

    new-instance v7, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v7}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_6

    :catch_4
    const-string/jumbo v0, "NameNotFoundException packageName : "

    invoke-static {v0, v8, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    goto :goto_9

    :cond_7
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    const-string v0, "Create file info_list"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_7
    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    throw v1

    :cond_9
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    const-string/jumbo v0, "Unknown app does not exist but create file info_list "

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_9
    return-void
.end method

.method public final checkFollowingLegitimateWay(Ljava/lang/String;I)Z
    .locals 0

    const-string/jumbo p2, "Only the system can claim checkFollowingLegitimateWay"

    invoke-static {p2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not followed legitimate way"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkIfSuspiciousValue(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .locals 8

    const-string/jumbo p0, "Only the system and sub system can claim checkIfTargetFromManager()"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p2

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, ""

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    :try_start_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    const-string/jumbo v1, "type"

    const-string/jumbo v5, "value"

    const-string/jumbo v6, "contents"

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "block"

    :cond_1
    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_4

    const-string/jumbo v7, "pId"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "AASA_ASKSManager"

    const-string v6, "ERROR: checkIntegrity "

    const-string/jumbo v7, "[Token] fail check verify : "

    array-length v8, v3

    const-string v9, "22"

    const/16 v10, 0x200

    if-ge v8, v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-array v11, v10, [B

    const/4 v12, 0x0

    invoke-static {v3, v12, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->getTokenContents([B)[B

    move-result-object v3

    if-eqz v3, :cond_1a

    array-length v10, v3

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string/jumbo v10, "SHA256WithRSAEncryption"

    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    const-string/jumbo v14, "x.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v8, 0x3

    const-string/jumbo v12, "PackageInformation"

    if-eq v2, v13, :cond_8

    if-eq v2, v15, :cond_5

    if-eq v2, v8, :cond_2

    move-object/from16 v4, v16

    move-object v7, v4

    goto/16 :goto_5

    :cond_2
    :try_start_1
    const-string/jumbo v15, "[Token] check verify "

    invoke-static {v12, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const-string/jumbo v15, "[Token] check cert text "

    invoke-static {v12, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v14, v15}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v15}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v4

    move-object/from16 v4, v16

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v8, v16

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v15}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v8, v16

    goto/16 :goto_7

    :cond_3
    const-string/jumbo v4, "[Token] check cert in device "

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/asks/ASKSManagerService;->SAFE_INSTALL_CERT_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "[Token] cert exist : SAFE_INSTALL_CERT_PATH"

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v15, v0, Lcom/android/server/asks/ASKSManagerService;->SAFE_INSTALL_CERT_PATH:Ljava/lang/String;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v14, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v16, v4

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v16, v4

    goto/16 :goto_7

    :cond_4
    :try_start_9
    const-string/jumbo v0, "[Token] cert does not exist"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_5
    new-instance v4, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v15, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v7, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    return-object v7

    :cond_6
    move-object/from16 v7, v16

    goto :goto_5

    :cond_7
    :goto_4
    return-object v16

    :cond_8
    :try_start_c
    new-instance v4, Landroid/util/jar/StrictJarFile;

    iget-object v7, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v4, v7, v15, v13}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v7, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v4, v7}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-static {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v15, :cond_a

    :try_start_f
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :catch_4
    :cond_9
    return-object v15

    :cond_a
    move-object/from16 v17, v16

    move-object/from16 v16, v4

    move-object v4, v7

    move-object/from16 v7, v17

    :goto_5
    if-eq v2, v8, :cond_b

    :try_start_10
    invoke-virtual {v14, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    :cond_b
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_d
    invoke-virtual {v10, v7}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    array-length v14, v3

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15, v14}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v10, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v0, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v16, :cond_e

    :try_start_11
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    :catch_5
    :cond_f
    return-object v0

    :cond_10
    :try_start_12
    const-string/jumbo v10, "sigCert verify OK!!!!"

    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eq v2, v13, :cond_16

    const/4 v10, 0x2

    if-eq v2, v10, :cond_16

    if-eq v2, v8, :cond_13

    if-eqz v16, :cond_11

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    :catch_6
    :cond_12
    const-string/jumbo v0, "this is not on the way to check integrity"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_13
    :try_start_14
    invoke-virtual {v0, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->checkSafeInstallCertificate([BLjava/security/cert/X509Certificate;)[B

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v16, :cond_14

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    :catch_7
    :cond_15
    return-object v0

    :cond_16
    :try_start_16
    invoke-virtual {v0, v1, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v16, :cond_17

    :try_start_17
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    :catch_8
    :cond_18
    return-object v0

    :catchall_4
    move-exception v0

    move-object v8, v4

    move-object/from16 v16, v7

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v8, v4

    move-object/from16 v16, v7

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v8, v4

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v8, v4

    goto :goto_7

    :cond_19
    :try_start_18
    const-string/jumbo v0, "Token Cert does not exist!"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V

    const-string v0, "21"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    :catch_b
    return-object v0

    :catchall_6
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_1a
    :goto_6
    return-object v3

    :goto_7
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v8, :cond_1b

    :try_start_1b
    invoke-virtual {v8}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_1b
    if-eqz v16, :cond_1c

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    :catch_d
    :cond_1c
    return-object v0

    :catchall_7
    move-exception v0

    :goto_8
    if-eqz v8, :cond_1d

    :try_start_1c
    invoke-virtual {v8}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_1d
    if-eqz v16, :cond_1e

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    :catch_e
    :cond_1e
    throw v0
.end method

.method public final checkNetworkConnection(Landroid/content/Context;)I
    .locals 3

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "checkNetworkConnection : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "context is null. "

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    return p0

    :cond_2
    return v1
.end method

.method public final checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkSafeInstallCertificate([BLjava/security/cert/X509Certificate;)[B
    .locals 8

    const-string v0, "22"

    const-string v1, "AASA_ASKSManager"

    const-string/jumbo v2, "[Token] ERROR: SignerCert is not verified by RootCert "

    const-string/jumbo v3, "[Token] ERROR: rootCert is not verified "

    const-string/jumbo v4, "PackageInformation"

    const-string/jumbo v5, "[Token] checkSafeInstallCertificate start "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "x.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    new-instance v7, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->SAFE_INSTALL_CERT_PATH:Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p2, "[Token] Signer authentication has been confirmed."

    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p0, "[Token] SafeInstall Cert is verificated!"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :catch_1
    move-object v5, v7

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_3
    :goto_0
    const-string/jumbo p0, "Token is NOT verificated in CheckCRL!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final checkSecurityEnabled()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public final checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/AsksParcel;)I
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    const-string/jumbo v0, "Only the system can claim checkUnknownSourcePackage"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo v10, "PackageInformation"

    if-eqz v3, :cond_0

    if-eqz p5, :cond_0

    if-eqz v13, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v15, v10

    const/16 v19, 0x0

    goto/16 :goto_46

    :cond_1
    const-string v0, " ::"

    invoke-static {v3, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "::"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.boot.carrierid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isGlobalTargetProject()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Global Target devices......"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v17, 0x1

    :goto_0
    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    :goto_1
    if-eqz p13, :cond_5

    invoke-virtual/range {p13 .. p13}, Landroid/content/pm/AsksParcel;->getSafeInstallToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p13 .. p13}, Landroid/content/pm/AsksParcel;->getSafeInstallCert()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ASKSParcel token : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , cert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v6, "ASKSParcel is not null"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v6, v5

    move-object v5, v0

    goto :goto_3

    :cond_5
    const-string v0, "ASKSParcel is null"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOKEN_REVOKE.xml"

    invoke-static {v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v20

    const-string/jumbo v2, "PackageInformation_TokenRevoke"

    if-eqz v20, :cond_9

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v21, v4

    :goto_4
    const/4 v4, 0x1

    if-eq v9, v4, :cond_8

    :try_start_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v23, v8

    const/4 v8, 0x2

    if-ne v9, v8, :cond_7

    if-eqz v4, :cond_7

    :try_start_5
    const-string/jumbo v9, "package"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "name"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v9, 0x0

    :try_start_6
    invoke-interface {v3, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "date"

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_5
    move-object v3, v0

    goto :goto_9

    :cond_6
    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v9, v4

    move-object/from16 v8, v23

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_8
    move-object/from16 v23, v8

    goto :goto_6

    :cond_8
    move-object/from16 v23, v8

    const/4 v9, 0x0

    new-instance v3, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;

    invoke-direct {v3, v7, v0}, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;-><init>(Ljava/util/List;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v8, v3

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v23, v8

    goto :goto_5

    :goto_9
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v23, v8

    const/4 v9, 0x0

    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Token] revoke Token error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Token] revoke List size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_9
    move-object/from16 v23, v8

    const/4 v9, 0x0

    const-string/jumbo v0, "[Token] revoke policy does not exist."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-object v8, v9

    :goto_d
    invoke-virtual {v1, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->getAuthorizedToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/asks/AuthorizedToken;

    move-result-object v2

    const-string/jumbo v3, "[Token] packageHash is empty"

    const-string/jumbo v4, "[Token] getPkgHash : "

    const-string v7, " packageHash : "

    const-string/jumbo v9, "[Token] token digest : "

    const-string/jumbo v15, "safeInstall"

    if-eqz v2, :cond_10

    iget-object v0, v2, Lcom/android/server/asks/AuthorizedToken;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->supportSafeInstallToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v2, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v2, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move-object/from16 v21, v5

    :try_start_a
    invoke-static {v12, v15}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v24, v6

    :try_start_c
    iget-object v6, v2, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v24, v6

    goto :goto_f

    :cond_a
    move-object/from16 v24, v6

    :goto_e
    move-object/from16 v36, v7

    move-object v7, v5

    move-object/from16 v5, v36

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v24, v6

    const/4 v5, 0x0

    :goto_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_b
    move-object/from16 v21, v5

    move-object/from16 v24, v6

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    const/4 v7, 0x0

    :goto_10
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v2, Lcom/android/server/asks/AuthorizedToken;->packageName:Ljava/lang/String;

    move-object/from16 v25, v3

    iget-object v3, v2, Lcom/android/server/asks/AuthorizedToken;->createData:Ljava/lang/String;

    invoke-static {v0, v3, v8}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenRevoke(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v11, v5

    move-object/from16 v20, v8

    move-object v0, v15

    move-object/from16 v27, v21

    move-object/from16 v28, v24

    move-object/from16 v12, v25

    move-object v8, v4

    goto :goto_11

    :cond_c
    move-object/from16 v3, p1

    move-object v11, v5

    move-object/from16 v20, v8

    move-object/from16 v27, v21

    move-object/from16 v28, v24

    move-object/from16 v12, v25

    move-object/from16 v5, p2

    move-object v8, v4

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "PackageInformation_Token"

    const-string/jumbo v3, "[Token] check token :  conditions success"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    goto :goto_11

    :cond_d
    move-object v0, v15

    :goto_11
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v1, "[Token] Popup result : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_e
    const-string/jumbo v0, "[Token] has token but.. not matched"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_f
    move-object v12, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object v11, v7

    move-object/from16 v20, v8

    move-object v8, v4

    const-string/jumbo v0, "[Token] token policy is null"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_10
    move-object v12, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object v11, v7

    move-object/from16 v20, v8

    move-object v8, v4

    :goto_12
    const-string/jumbo v0, "[Token] Parents  pkgName : "

    const/16 v2, 0x80

    if-eqz v14, :cond_11

    :try_start_d
    iget-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v14, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v12, p5

    move/from16 v7, p12

    move-object/from16 v11, v23

    goto/16 :goto_17

    :cond_11
    iget-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v13, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    :goto_13
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_16

    const-string/jumbo v4, "safeInstall_support"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "safeInstall_cert"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/android/server/asks/ASKSManagerService;->getAuthorizedToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/asks/AuthorizedToken;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string/jumbo v4, "[Token] Parents checking"

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/server/asks/AuthorizedToken;->country:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->supportSafeInstallToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v3, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , baseCodePath : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, v3, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    if-nez v0, :cond_14

    :try_start_e
    invoke-static {v2, v15}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :try_start_f
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/asks/AuthorizedToken;->digest:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_15

    :cond_13
    :goto_14
    move-object v5, v2

    goto :goto_16

    :catch_7
    move-exception v0

    const/4 v2, 0x0

    :goto_15
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_14
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_16
    iget-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    move-object/from16 v9, p1

    move-object/from16 v12, p5

    move/from16 v7, p12

    move-object/from16 v8, v20

    move-object/from16 v11, v23

    :try_start_11
    invoke-static/range {v2 .. v8}, Lcom/android/server/asks/AuthorizedTokenManager;->checkParentsAuthorizedToken(Landroid/content/Context;Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v3, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    goto :goto_19

    :catch_8
    move-exception v0

    goto :goto_17

    :cond_15
    move-object/from16 v9, p1

    move-object/from16 v12, p5

    move/from16 v7, p12

    move-object/from16 v11, v23

    const-string/jumbo v0, "[Token] Parents install_Authority is empty"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_18

    :cond_16
    move-object/from16 v9, p1

    move-object/from16 v12, p5

    move/from16 v7, p12

    move-object/from16 v11, v23

    goto :goto_18

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Token] getParentsToken() : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v10}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_17
    :goto_18
    move-object v0, v15

    :goto_19
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v1, "[Token] Parents Popup result : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_18
    const-string/jumbo v0, "[Token] checked parents, but not valid"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "rampart_blocked_unknown_apps"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v15, " "

    const/16 v20, 0x82

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x2b

    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    const-string/jumbo v3, "RAMPARTPackageInformation"

    if-ge v2, v4, :cond_19

    const-string/jumbo v0, "rampart: no superpass rule"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_19
    invoke-virtual {v1, v3, v0, v14, v7}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rampart: superpass:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1a

    invoke-virtual {v1, v3, v0, v13, v7}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v2, :cond_1b

    :goto_1a
    const/4 v9, 0x0

    goto :goto_1d

    :cond_1b
    :goto_1b
    if-eqz v14, :cond_1c

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v14, v4}, Lcom/android/server/asks/ASKSManagerService;->isSimpleTrustore(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1a

    :cond_1c
    const/16 v19, 0x0

    :try_start_12
    aget-object v0, v12, v19

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0, v13, v14}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForTrustStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_1c

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1c
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "self update -> block for rampart"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v20

    goto :goto_1d

    :cond_1d
    const-string v0, ""

    invoke-static {v0, v9, v11, v13, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v14, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x7f

    :goto_1d
    return v9

    :cond_1e
    if-nez v18, :cond_21

    if-eqz v17, :cond_1f

    goto :goto_1f

    :cond_1f
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "This is not target of Safe Install"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_1e
    const/16 v19, 0x0

    goto/16 :goto_45

    :cond_21
    :goto_1f
    invoke-static {v9, v12}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    const-string/jumbo v0, "OEM SIGNED:"

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_22
    const/4 v3, 0x0

    if-eqz v14, :cond_23

    invoke-virtual {v1, v7, v14, v3}, Lcom/android/server/asks/ASKSManagerService;->isSimpleTrustore(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Simple TS:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_23
    const-string v3, ","

    if-eqz v18, :cond_3c

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz v14, :cond_25

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_21

    :cond_24
    :goto_20
    move-object v15, v10

    const/16 v19, 0x0

    move-object v10, v9

    goto/16 :goto_2f

    :cond_25
    :goto_21
    const-string/jumbo v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_23

    :cond_26
    const-string/jumbo v0, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "com.android.vending"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_22

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x29

    invoke-static {v4, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_29

    const-string/jumbo v0, "skip TS due to non policy"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_22
    const/4 v0, 0x1

    goto :goto_23

    :cond_29
    const-string/jumbo v4, "checking.. ts: "

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10, v0, v13, v7}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v0

    :goto_23
    if-eqz v0, :cond_2a

    goto :goto_20

    :cond_2a
    if-nez v14, :cond_2b

    move-object v0, v13

    goto :goto_24

    :cond_2b
    move-object v0, v14

    :goto_24
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "1 :"

    const-string v5, " init:"

    invoke-static {v4, v9, v5, v13, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_2c

    const-string v4, "2 :"

    const-string v5, " org:"

    invoke-static {v4, v9, v5, v14, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string/jumbo v4, "initPkg"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_30

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2f

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v18

    if-eqz v18, :cond_2d

    const-string v5, " compared "

    invoke-static {v9, v5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v18, v2

    const/16 v19, 0x0

    aget-object v2, v18, v19

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    aget-object v2, v18, v21

    invoke-static {v5, v2, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_2d
    move-object/from16 v18, v2

    const/16 v19, 0x0

    :goto_26
    aget-object v2, v18, v19

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v6, 0x0

    :cond_2e
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_25

    :cond_2f
    move v2, v6

    goto :goto_27

    :cond_30
    const/4 v2, 0x1

    :goto_27
    if-eqz v2, :cond_3b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x2e

    invoke-static {v4, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "PackageInformation"

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v18, 0x1

    const/16 v22, 0x0

    if-eqz v5, :cond_33

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    :goto_28
    move/from16 v2, v18

    goto :goto_29

    :cond_31
    invoke-virtual {v1, v7, v0}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_28

    :cond_33
    move/from16 v2, v22

    :goto_29
    if-eqz v2, :cond_34

    const-string/jumbo v4, "SafeInstall warning."

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :cond_34
    const-string/jumbo v4, "initPkg"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_39

    move/from16 v5, v22

    move v6, v5

    :goto_2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_38

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move/from16 p12, v2

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    array-length v7, v2

    move-object/from16 v23, v2

    const/4 v2, 0x2

    if-lt v7, v2, :cond_37

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "comp: "

    const-string v7, " with "

    invoke-static {v2, v0, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v23, v22

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v23, v18

    invoke-static {v2, v7, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    aget-object v2, v23, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    aget-object v2, v23, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_36
    add-int/lit8 v6, v6, 0x1

    :cond_37
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p12

    goto :goto_2a

    :cond_38
    move/from16 v22, v6

    :cond_39
    move/from16 p12, v2

    if-nez v22, :cond_3a

    const-string/jumbo v2, "SafeInstall warning.."

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v18

    goto :goto_2b

    :cond_3a
    move/from16 v2, p12

    :goto_2b
    move/from16 v18, v2

    goto :goto_2c

    :cond_3b
    const/16 v18, 0x0

    :goto_2c
    :try_start_13
    new-instance v2, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v2}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_13} :catch_f

    const/16 v19, 0x0

    :try_start_14
    aget-object v4, v12, v19

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "allow"

    const-string/jumbo v6, "allow"

    const-string/jumbo v7, "true"

    const-string/jumbo v8, "nonStore"
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_14} :catch_e

    :try_start_15
    const-string/jumbo v9, "true"
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_15} :catch_d

    move-object/from16 v22, v10

    :try_start_16
    const-string/jumbo v10, "false"
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_16} :catch_c

    move-object/from16 v32, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v22

    move-object/from16 v3, p1

    :try_start_17
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_17} :catch_b

    move-object v10, v3

    :try_start_18
    iput-object v0, v2, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_30

    :catch_a
    move-exception v0

    goto :goto_2e

    :catch_b
    move-exception v0

    move-object v10, v3

    goto :goto_2e

    :catch_c
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v32, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v22

    goto :goto_2e

    :catch_d
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v23, v15

    move-object v15, v10

    move-object/from16 v10, p1

    goto :goto_2e

    :catch_e
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v23, v15

    :goto_2d
    move-object v15, v10

    move-object v10, v9

    goto :goto_2e

    :catch_f
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v23, v15

    const/16 v19, 0x0

    goto :goto_2d

    :goto_2e
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_30

    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v19

    :cond_3c
    move-object/from16 v32, v3

    move-object/from16 v23, v15

    const/16 v19, 0x0

    move-object v15, v10

    move-object v10, v9

    move/from16 v18, v19

    :goto_30
    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_79

    new-instance v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v10, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    move-object/from16 v4, p2

    iput-object v4, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    move-object/from16 v5, p3

    iput-object v5, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    move-object/from16 v6, p4

    iput-object v6, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    iput-object v13, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    iput-object v14, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    move/from16 v7, p9

    iput v7, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sdkVersion:I

    move-object/from16 v8, p10

    iput-object v8, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    move-object/from16 v9, p11

    iput-object v9, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    new-instance v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move/from16 v4, v19

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    const/4 v5, 0x1

    iput-boolean v5, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    iput-boolean v4, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    iput-object v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->changeStatusForDev(Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V

    invoke-virtual {v1, v7, v3, v2, v4}, Lcom/android/server/asks/ASKSManagerService;->checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V

    const/16 v0, 0x1b

    if-eqz v17, :cond_3d

    move v4, v0

    goto :goto_31

    :cond_3d
    const/16 v4, 0x2d

    :goto_31
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_3f

    if-ne v4, v0, :cond_3e

    const-string/jumbo v0, "_COMMON"

    goto :goto_32

    :cond_3e
    const-string/jumbo v0, "_GLOBAL"

    :goto_32
    const-string v5, "FIRST RULE: TOTALLIST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "CERT"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v0}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string/jumbo v9, "block"

    move-object/from16 p12, v9

    const-string/jumbo v9, "except"

    if-nez v0, :cond_4e

    iget-object v8, v3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    move-object v0, v9

    const/4 v9, 0x1

    move-object v14, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v22, v5

    move-object v5, v6

    move-object v3, v12

    move/from16 v6, p9

    move-object/from16 v12, p12

    invoke-static/range {v2 .. v9}, Lcom/android/server/asks/ASKSManagerService;->checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;

    move-result-object v4

    move-object v5, v7

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string/jumbo v3, "initType"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_42

    const/4 v7, 0x0

    :goto_33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_42

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, v32

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_40

    array-length v1, v8

    move-object/from16 p12, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_41

    const/16 v19, 0x0

    aget-object v1, v8, v19

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v21, 0x1

    aget-object v1, v8, v21

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/asks/ASKSManagerService;->isTrustedSelfUpdate(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    move v6, v1

    goto :goto_34

    :cond_40
    move-object/from16 p12, v3

    const/4 v3, 0x2

    :cond_41
    :goto_34
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p12

    move-object/from16 v32, v9

    const/4 v9, 0x0

    goto :goto_33

    :cond_42
    if-eqz v6, :cond_43

    const-string/jumbo v0, "SELF UPDATE: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v1, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v3, "except"

    move-object/from16 p6, p0

    move-object/from16 p8, p5

    move/from16 p11, v0

    move/from16 p12, v1

    move/from16 p13, v2

    move-object/from16 p10, v3

    move-object/from16 p9, v4

    move-object/from16 p7, v10

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    const/16 v19, 0x0

    return v19

    :cond_43
    move-object/from16 v1, p0

    move-object v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v5, v2, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V

    move/from16 v21, v4

    goto :goto_35

    :cond_44
    move-object v3, v4

    const/4 v4, 0x1

    const/16 v21, 0x0

    :goto_35
    iget-boolean v6, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v6, :cond_45

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy()Z

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    :cond_45
    iget v6, v3, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v6, :cond_4c

    iget v6, v3, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p12, v14

    move-object v14, v11

    move-object/from16 v11, v16

    move-object/from16 v16, p12

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v34, v0

    move-object v0, v2

    move-object v1, v3

    move-object v2, v5

    move-object/from16 p12, v12

    move-object v6, v13

    move/from16 v12, v17

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v12}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    move-result-object v13

    move-object/from16 v17, v11

    move/from16 v24, v12

    move-object v11, v4

    move-object v12, v8

    move-object v4, v9

    move-object v8, v3

    move-object v3, v5

    move-object v9, v6

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_46

    const-string/jumbo v5, "[FIRST RET]:"

    invoke-static {v5, v3, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    move-object/from16 v5, p12

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "TOTALLIST_COMMON"

    move/from16 p12, v6

    const-string/jumbo v6, "policyFile"

    if-eqz p12, :cond_49

    iget-object v4, v13, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p0

    invoke-virtual {v4, v1, v2, v0, v13}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "[FIRST BL]:"

    invoke-static {v2, v3, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-static {v2, v0, v15}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_47
    if-eqz v21, :cond_48

    invoke-static/range {v20 .. v20}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_48
    iget v0, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_49
    move-object/from16 v3, p0

    move-object/from16 p12, v5

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4a

    iget-object v5, v13, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1, v2, v0, v13}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    iget-boolean v5, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v6, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move-object/from16 p7, p1

    move-object/from16 p8, p5

    move-object/from16 p9, v1

    move/from16 p13, v2

    move-object/from16 p6, v3

    move-object/from16 p10, v4

    move/from16 p11, v5

    move/from16 p12, v6

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    move-object/from16 v3, p7

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "[FIRST AL]:"

    invoke-static {v1, v3, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-static {v1, v0, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_4a
    move-object/from16 v3, p1

    iget-boolean v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    if-eqz v4, :cond_4b

    const-string v0, " is selfupdated.."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v5, "except"

    move-object/from16 p6, p0

    move-object/from16 p8, p5

    move/from16 p11, v0

    move-object/from16 p9, v1

    move/from16 p13, v2

    move-object/from16 p7, v3

    move/from16 p12, v4

    move-object/from16 p10, v5

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    const/16 v19, 0x0

    return v19

    :cond_4b
    move-object/from16 v1, p0

    const/16 v19, 0x0

    const-string/jumbo v4, "more checking........"

    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v13

    goto :goto_36

    :cond_4c
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v34, v0

    move-object v0, v2

    move-object v2, v5

    move-object/from16 p12, v12

    move-object v9, v13

    move-object v5, v14

    move/from16 v24, v17

    const/16 v19, 0x0

    move-object/from16 v12, p11

    move-object v14, v11

    move-object/from16 v17, v16

    move-object/from16 v11, p3

    iget-boolean v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    if-eqz v4, :cond_4d

    const-string v0, " is selfupdated.. but ret is null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v19

    :cond_4d
    const/4 v4, 0x0

    goto :goto_36

    :cond_4e
    move-object/from16 v8, p2

    move-object/from16 v12, p11

    move-object/from16 v34, v2

    move-object v0, v3

    move-object/from16 v22, v5

    move-object v2, v7

    move-object v5, v9

    move-object v3, v10

    move-object v14, v11

    move-object v9, v13

    move/from16 v24, v17

    move-object/from16 v11, p3

    move-object v10, v6

    move-object/from16 v17, v16

    const/4 v4, 0x0

    const/16 v21, 0x0

    :goto_36
    if-nez v24, :cond_50

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "End"

    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    new-instance v3, Lcom/android/server/asks/RETVALUE;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    if-eqz v18, :cond_20

    const/16 v0, 0x65

    return v0

    :cond_50
    invoke-virtual {v1, v2, v0}, Lcom/android/server/asks/ASKSManagerService;->printCurInfo(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V

    iget-boolean v6, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    if-eqz v6, :cond_57

    iget-object v6, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCarrierIdFromSimMccMnc()I

    move-result v7

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    const-string v13, " stop checking by "

    move-object/from16 v16, v5

    const/4 v5, -0x1

    if-eq v7, v5, :cond_54

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    const-string v5, "450"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, " Keep checking by "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v23

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    :cond_51
    move-object/from16 v5, v23

    move-object/from16 v23, v14

    iget-boolean v14, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v14, :cond_52

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " DevDevice, Keep checking by "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_53
    move-object/from16 v23, v14

    const-string v5, " Keep checking by no operator"

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_54
    move-object/from16 v5, v23

    move-object/from16 v23, v14

    iget-boolean v14, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v14, :cond_55

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " DevDevice, keep checking by "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    const/16 v19, 0x0

    goto :goto_39

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_56
    move-object/from16 v16, v5

    move-object/from16 v23, v14

    const/16 v19, 0x0

    const-string/jumbo v5, "telephonyManager null"

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_57
    move-object/from16 v16, v5

    :goto_38
    move-object/from16 v23, v14

    goto :goto_37

    :goto_39
    const-string v5, "AASAService Start"

    invoke-static {v15, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19
    new-instance v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;

    aget-object v6, p5, v19

    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->packageName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->permList:[Ljava/lang/String;

    iput-object v11, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->servicePermList:[Ljava/lang/String;

    iput-object v10, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->baseCodePath:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->signatures:Ljava/lang/String;

    iput-object v9, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->initiatingPackageName:Ljava/lang/String;

    move-object/from16 v14, p7

    iput-object v14, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originatingPackageName:Ljava/lang/String;

    move-object/from16 v13, p8

    iput-object v13, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originalInstallerPackageName:Ljava/lang/String;

    move/from16 v6, p9

    iput v6, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->sdkVersion:I

    move-object/from16 v7, p10

    iput-object v7, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->referralUrl:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->downloadUrl:Ljava/lang/String;

    move-object/from16 v7, v27

    iput-object v7, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallToken:Ljava/lang/String;

    move-object/from16 v7, v28

    iput-object v7, v5, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallCert:Ljava/lang/String;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_19} :catch_10

    new-instance v7, Lcom/android/server/asks/safeInstall/AASAServiceChecker;

    iget-object v6, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v5, v6}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;-><init>(Lcom/android/server/asks/safeInstall/SafeInstallVo;Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->getPolicyResult()I

    move-result v5

    const-string v6, "AASAService Result : "

    invoke-static {v5, v6, v15}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x64

    if-eq v5, v6, :cond_5e

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v0

    if-nez v5, :cond_58

    goto :goto_3a

    :cond_58
    const/4 v1, 0x1

    if-ne v5, v1, :cond_59

    goto :goto_3b

    :cond_59
    const/4 v1, 0x2

    if-ne v5, v1, :cond_5a

    const/16 v1, 0x96

    goto :goto_3b

    :cond_5a
    const/4 v1, 0x3

    if-ne v5, v1, :cond_5c

    if-eqz v0, :cond_5b

    const/16 v1, 0x64

    goto :goto_3b

    :cond_5b
    const/16 v1, 0x65

    goto :goto_3b

    :cond_5c
    const/4 v0, 0x4

    if-ne v5, v0, :cond_5d

    const/16 v1, 0x8c

    goto :goto_3b

    :cond_5d
    :goto_3a
    const/4 v1, 0x0

    :goto_3b
    return v1

    :cond_5e
    const-string/jumbo v5, "more checking..."

    invoke-static {v15, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x1f

    move-object/from16 v6, v34

    invoke-static {v5, v6}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    move/from16 p10, v7

    const-string v7, "::zipFormat:"

    if-nez p10, :cond_6a

    move-object/from16 v34, v6

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_69

    new-instance v25, Lcom/android/server/asks/RETVALUE;

    invoke-direct/range {v25 .. v25}, Ljava/lang/Object;-><init>()V

    const/16 v29, 0x0

    const-string v30, ""

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v31, ""

    const/16 v32, 0x0

    invoke-virtual/range {v25 .. v32}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    move-object/from16 v8, v25

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/UnknownStore;

    iget-object v6, v5, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    const-string/jumbo v9, "[D]:"

    if-eqz v6, :cond_5f

    const/4 v10, 0x0

    :goto_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v25, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v25

    goto :goto_3c

    :cond_5f
    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v5, v6, v8, v10}, Lcom/android/server/asks/UnknownStore;->checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z

    move-result v6

    if-eqz v6, :cond_60

    const-string/jumbo v6, "regex domain Hit"

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_60
    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v8, v11}, Lcom/android/server/asks/UnknownStore;->checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z

    move-result v6

    if-eqz v6, :cond_61

    const-string/jumbo v6, "regex package Hit"

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_3d
    iget v6, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v6, :cond_65

    iget v6, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v8, v2, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    const-string/jumbo v11, "[DD]:"

    move-object/from16 v13, v23

    invoke-static {v11, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v10, v13, v6, v7, v11}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v10, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p12

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_63

    if-eqz v21, :cond_62

    goto/16 :goto_40

    :cond_62
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    :cond_63
    move-object/from16 v11, v16

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_64

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move-object/from16 p8, p5

    move/from16 p11, v0

    move-object/from16 p6, v1

    move/from16 p13, v2

    move-object/from16 p7, v3

    move/from16 p12, v4

    move-object/from16 p10, v6

    move-object/from16 p9, v8

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    const/16 v19, 0x0

    return v19

    :cond_64
    :goto_3e
    move-object/from16 v25, v8

    goto :goto_3f

    :cond_65
    move-object/from16 v10, p12

    move-object/from16 v11, v16

    move-object/from16 v13, v23

    goto :goto_3e

    :goto_3f
    const/16 v29, 0x0

    const-string v30, ""

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v31, ""

    const/16 v32, 0x0

    invoke-virtual/range {v25 .. v32}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    move-object/from16 v8, v25

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lcom/android/server/asks/UnknownStore;->checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    iget v5, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v5, :cond_6b

    iget v5, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_66

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    :cond_66
    invoke-virtual {v1, v8, v2, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    invoke-static {v9, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v6, v13, v5, v7, v4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v6, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    if-eqz v21, :cond_67

    :goto_40
    return v20

    :cond_67
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    :cond_68
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move-object/from16 p8, p5

    move/from16 p11, v0

    move-object/from16 p6, v1

    move/from16 p13, v2

    move-object/from16 p7, v3

    move/from16 p12, v4

    move-object/from16 p10, v5

    move-object/from16 p9, v8

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    const/16 v19, 0x0

    return v19

    :cond_69
    move-object/from16 v10, p12

    :goto_41
    move-object/from16 v11, v16

    move-object/from16 v13, v23

    goto :goto_42

    :cond_6a
    move-object/from16 v10, p12

    move-object/from16 v34, v6

    goto :goto_41

    :cond_6b
    :goto_42
    invoke-static/range {p6 .. p6}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-static/range {v22 .. v22}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static/range {p6 .. p6}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "third party case.."

    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_6c
    invoke-static {v14}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-static/range {v22 .. v22}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v14}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "third party case..(origin)"

    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_6d
    move-object/from16 v1, v34

    :goto_43
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " total list["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    const-string/jumbo v5, "]"

    invoke-static {v3, v4, v5, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iget v3, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    invoke-static {v3, v1}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_78

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    move-object v3, v7

    const/4 v7, 0x0

    move/from16 v4, p9

    move-object v5, v2

    move-object v8, v3

    move-object v14, v10

    move-object/from16 v16, v11

    move-object/from16 v3, p4

    move-object v2, v1

    move-object/from16 v1, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/asks/ASKSManagerService;->checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;

    move-result-object v2

    iget v1, v2, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object v1, v2

    move-object v2, v5

    move-object/from16 p12, v14

    move-object/from16 v22, v15

    move-object/from16 v35, v16

    move-object/from16 v11, v17

    const/16 v33, 0x1

    move-object/from16 v14, p0

    move-object/from16 v5, p1

    move-object v15, v8

    move-object v8, v12

    move/from16 v12, v24

    invoke-static/range {v0 .. v12}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    iget-boolean v6, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    if-eqz v6, :cond_6f

    invoke-static/range {p4 .. p4}, Lcom/android/server/asks/ASKSManagerService;->isValidZipFormat(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    :cond_6f
    invoke-virtual {v14, v1, v2, v0, v3}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    const-string/jumbo v6, "[RET]:"

    if-eqz v3, :cond_70

    invoke-static {v6, v5, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0, v13, v9, v15, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/asks/RETVALUE;->SA:I

    move-object/from16 v15, v22

    invoke-static {v3, v0, v15}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_44

    :cond_70
    move-object/from16 v15, v22

    invoke-static {v6, v5, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v3, v13, v9, v13, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v1, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-static {v0, v3, v15}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_44
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    if-nez v0, :cond_72

    const-string v0, ":format:"

    invoke-static {v5, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-static {v15, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v21, :cond_71

    invoke-static/range {v20 .. v20}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_71
    invoke-static/range {v33 .. v33}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_72
    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    if-eqz v0, :cond_73

    const-string v0, " is selfupdated"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_73
    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v3, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move-object/from16 p8, p5

    move/from16 p11, v0

    move-object/from16 p9, v1

    move/from16 p13, v2

    move/from16 p12, v3

    move-object/from16 p7, v5

    move-object/from16 p10, v9

    move-object/from16 p6, v14

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    if-eqz v21, :cond_74

    goto/16 :goto_1e

    :cond_74
    iget v0, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_75
    move-object/from16 v5, p12

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-eqz v21, :cond_76

    invoke-static/range {v20 .. v20}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_76
    iget v0, v1, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_77
    move-object/from16 v5, v35

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v3, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v2, v2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    move-object/from16 p6, p0

    move-object/from16 p7, p1

    move-object/from16 p8, p5

    move/from16 p11, v0

    move-object/from16 p9, v1

    move/from16 p13, v2

    move/from16 p12, v3

    move-object/from16 p10, v9

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZ)V

    const/16 v19, 0x0

    :goto_45
    return v19

    :cond_78
    const/16 v19, 0x0

    const-string v0, "Adnormal case: CHECK TAGET DEVICE"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v19

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_79
    const-string v0, "Adnormal case: no nodelist"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :goto_46
    const-string v0, "Adnormal case!"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v19
.end method

.method public final clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "Only the system can claim clearASKSruleForRemovedPackage"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    :cond_0
    new-instance v1, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v1}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"

    invoke-static {p1, p0}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string/jumbo v1, "clearPackageFromFile() : count:"

    const-string/jumbo v2, "PackageInformation"

    invoke-static {v0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x64

    if-gt v0, v1, :cond_7

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_7

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ASKSManager"

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "File is deleted"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "File is not deleted"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const-string/jumbo v5, "noCert"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v6, "clearPackageFromFile() : adding  :: pkg ="

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    :cond_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public final compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    const-string/jumbo v3, "PackageInformation"

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "allow"

    const-string/jumbo v5, "block"

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "ALL"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/PKGINFO;

    iget v0, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "packageName"

    iget-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "signature"

    iget-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v5, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    const-string/jumbo v7, "executeBlock"

    invoke-direct {v5, v7, v0, v4}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    invoke-virtual {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    goto :goto_1

    :cond_6
    iget-object p0, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :cond_7
    :goto_1
    iget-object p0, p1, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "initType"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v0

    if-eqz v7, :cond_9

    const/4 v8, 0x1

    aget-object v9, v5, v8

    if-eqz v9, :cond_9

    invoke-static {v7}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v5, v0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'s policy was changed from "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    return-void

    :cond_b
    const-string/jumbo p0, "pkgNameHash is NULL!!"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getAuthorizedToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/asks/AuthorizedToken;
    .locals 9

    const/4 v0, 0x0

    const-string/jumbo v1, "PackageInformation"

    if-eqz p1, :cond_4

    const-string/jumbo v2, "[Token] safeInstallToken exists"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string/jumbo v3, "TOOLS FIGHTING!"

    array-length v4, p1

    new-array v4, v4, [B

    move v5, v2

    move v6, v5

    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    rem-int/lit8 v7, v6, 0xf

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    aget-byte v8, p1, v5

    sub-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    const-string/jumbo p1, "[Token] getAuthorizedToken : tokenCert is null"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_1
    const/4 p2, 0x3

    invoke-virtual {p0, v0, p2, v4, p1}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "[Token] getContent : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length p1, p0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/asks/AuthorizedTokenManager;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/asks/AuthorizedToken;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[Token] parseAuthorizedToken parsing error :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageInformation_Token"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0

    :cond_3
    :goto_3
    const-string/jumbo p0, "[Token] tokenContents length error"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[Token] getAuthorizedToken() : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string/jumbo p0, "[Token] token or cert is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getIMEIList()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const-string v2, "ASKSManager"

    if-lez v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "ASKSI added list"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "INVALID_IMEI"

    :cond_2
    const-string p0, "ASKSI added list 2"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo p0, "Only the system and sub system can claim getPolicyVersion()"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, "00000000"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo v2, "VERSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final getSEInfo(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v0, "Only the system can claim getSEInfo"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo v0, "aasa_blocked"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz p1, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iget v1, v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    const-string v3, "DENY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq v1, p1, :cond_4

    new-instance p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSigByPackage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "PackageInformation"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x8000000

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " Abnormal case : NoSuchAlgorithmException "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " Abnormal case : initiatingPackageName can not be modified "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUNvalueForASKS()Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "Only the system can claim getUNvalueForASKS"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo p0, "ro.boot.em.status"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "ro.serialno"

    const-string/jumbo v0, "none"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUnknownAppList()Ljava/util/List;
    .locals 3

    const-string/jumbo v0, "Only the system can claim isUnknownApps"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "PackageInformation"

    if-nez p0, :cond_0

    const-string p0, "LIMIT_CALLPEM disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string/jumbo p0, "checking limitCallPem.."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "overlay"

    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getUnknownAppList : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string/jumbo p0, "getUnknownAppList : installedUnknownList is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final isSimpleTrustore(ILjava/lang/String;Z)Z
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "PackageInformation"

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Simple TS  :"

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v3, "RAMPARTPackageInformation"

    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p3

    const-string v4, "CountryISO"

    invoke-virtual {p3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "CN"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x2a

    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x29

    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p3

    if-nez p3, :cond_4

    const-string/jumbo p0, "Simple TS  : list does not exist"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string/jumbo p3, "null"

    :cond_2
    const-string/jumbo v3, "Simple TS : "

    const-string v4, ":"

    invoke-static {p1, v3, p2, v4, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, ""

    :goto_1
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "ro.product.model"

    const-string/jumbo v3, "Unknown"

    invoke-static {p3, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string/jumbo v3, "SIMPLETRUSTEDSTORE"

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0x24

    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    :cond_4
    invoke-virtual {p0, v2, v0, p2, p1}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_5
    const-string/jumbo p0, "no target of Simple TS "

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isSuspiciousMsgTarget(Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo p0, "Only the system and sub system can claim isTargetDevice()"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "ASKSManager"

    const-string/jumbo p1, "setConfig does not exist."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v4, v2

    :goto_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    const-string/jumbo v3, "name"

    if-eqz v6, :cond_1

    :try_start_2
    const-string/jumbo v7, "config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    if-eqz v6, :cond_3

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    const-string/jumbo v6, "target_model"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ALL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return v1

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-eqz p3, :cond_3

    iget-object p0, p3, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "isTargetPackage() : There is no information of "

    const-string v1, ", check current session."

    const-string v2, "AASA_ASKSManager_RESTRICTED"

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p3, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    array-length p1, p0

    if-lez p1, :cond_3

    move p1, v0

    :goto_1
    array-length p3, p0

    if-ge p1, p3, :cond_3

    aget-object p3, p0, p1

    invoke-virtual {p3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p3

    move v1, v0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final isTrustedSelfUpdate(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "PackageInformation"

    const-string/jumbo v1, "check selfupdate.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x20

    invoke-static {v3, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    const-string v3, "CHECK"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v3, v5

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "adding pem:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p2, v3

    invoke-static {v4, v6, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_9

    const-string/jumbo p2, "check change of pem"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p2, 0x1000

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p1, :cond_8

    move p1, v5

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move v1, v5

    move v3, v1

    :goto_2
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "permission:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installed app already has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    const-string/jumbo v1, "The target perm is included in the installed app."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ne v3, v1, :cond_7

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "installed app does not have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    const-string/jumbo p0, "The installed app doesn\'t have target permission."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_8
    const-string/jumbo p0, "self requestedPermissions is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "self :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    const/4 p0, 0x1

    return p0
.end method

.method public final isTrustedStore(Ljava/lang/String;I)Z
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "userId :"

    const-string/jumbo v2, "PackageInformation"

    invoke-static {p2, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "rampart_blocked_unknown_apps"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2a

    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    :goto_0
    const-string/jumbo v2, "RAMPARTPackageInformation"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v4, "Unknown"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "TRUSTEDSTORE"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    const-string/jumbo p0, "skip TS due to non policy"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_3
    const-string/jumbo p0, "skip TS.."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z
    .locals 6

    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v3

    :goto_1
    const-string v4, ":"

    const-string v5, "ALL"

    if-eqz v1, :cond_6

    if-eqz v0, :cond_11

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p0, "TS Hit:"

    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p0, p4, p3}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "null"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "TS: Hit"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "TS: Hit not sig "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0, p4, p3}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo p0, "TS: ALL Unknown:"

    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "TS: ALL "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    const-string/jumbo v0, "PERMISSION"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_f

    :try_start_0
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-virtual {p0, p3, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p4, :cond_c

    move p4, v3

    :goto_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v0

    if-ge p4, v5, :cond_f

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v5, v5, p4

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "TS ALL Hit Permission:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object p0, p0, p4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_a
    :goto_3
    return v2

    :cond_b
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_c
    const-string/jumbo p0, "requestedPermissions is null"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    const-string/jumbo p0, "PackageInfo is null"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Error : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":::::"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    const-string/jumbo p0, "TS: ALL not Permission"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result p0

    const-string/jumbo p2, "TS: ALL not sig "

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    invoke-static {p2, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return v3

    :cond_11
    const-string p0, "Check ALL case :"

    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 4

    const-string/jumbo v0, "Only the system can claim isUnknownApps"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo p0, "PackageInformation"

    const-string/jumbo v1, "checking limitCallPem....(endCalling)"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isUnknownApp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo p1, "installedList is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string/jumbo v3, "overlay"

    invoke-static {v3, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/asks/InstalledAppInfo;

    iget-object p1, p1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "isUnknownApp is true"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_4
    :goto_0
    return v0

    :cond_5
    const-string/jumbo p1, "packageName is not exist in installedUnknownList"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const-string/jumbo p1, "packageName is not exist in overlayList"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_1
    const-string/jumbo p1, "overlayList is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    :goto_2
    const-string/jumbo p1, "packageName or hashedSignature is null!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IASKSManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_0

    const-string p1, "ASKSManager"

    const-string p2, "ASKS Manager Crash"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw p0
.end method

.method public final postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const-string/jumbo v0, "Only the system can claim postASKSsetup"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    iget-object v4, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    if-eqz v5, :cond_2

    new-instance v5, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v5, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    const-string v6, "AASA_ASKSManager_RUFS"

    const-string/jumbo v7, "Start to RUFS update."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "security.ASKS.policy_version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "!!path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_1

    invoke-virtual {v5, v1, p2}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(ILjava/lang/String;)Z

    move-result p2

    goto :goto_1

    :cond_1
    const-string p2, "AASA_RuleUpdateForSecurity_RUFS"

    const-string/jumbo v5, "updatePolicyFromToken: enforced fail"

    invoke-static {p2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    :goto_1
    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "policy update from "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, v4, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    sput-object p2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    const-string/jumbo p2, "ro.product.model"

    const-string/jumbo v4, "null"

    invoke-static {p2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "policy update to   "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "STORE"

    sget-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v4

    if-eqz v4, :cond_3

    move p2, v1

    :cond_3
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_9

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iget-object v4, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const-string v6, "AASA_ASKSManager_RESTRICTED"

    const-string/jumbo v7, "Token"

    if-eqz v2, :cond_4

    iget-object v8, v2, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postASKSsetup() : new restricted rule("

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    const-string v7, ") is updated from Token."

    invoke-static {p2, v4, v7, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    :goto_3
    move p2, v1

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    if-eqz v4, :cond_5

    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateRestictRule() : There is no restricted rule ("

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    const-string v4, ") from Token. remove and check policy."

    invoke-static {p2, v2, v4, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v2, :cond_7

    iget-object v4, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v4, :cond_6

    :try_start_0
    iget-object v2, v2, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v4, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v2, v4, :cond_8

    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object v2, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_6
    iput-object v2, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    :goto_5
    move p2, v1

    goto :goto_6

    :cond_7
    iget-object v2, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v2, :cond_8

    iput-object v3, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    goto :goto_5

    :catch_0
    :cond_8
    :goto_6
    iget v2, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    if-eq v2, v5, :cond_d

    iput v2, p3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    goto :goto_9

    :cond_9
    iget-boolean v4, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v4, :cond_a

    :goto_7
    move v2, v1

    goto :goto_8

    :cond_a
    iget v6, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    if-eq v6, v5, :cond_b

    goto :goto_7

    :cond_b
    iget-object v5, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    if-eqz p3, :cond_d

    new-instance p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v4, p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iget p3, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    iput p3, p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    iget-object p3, v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iget-object p3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move v2, v1

    goto :goto_a

    :cond_d
    move v2, p2

    goto :goto_a

    :cond_e
    move-object v0, v3

    :goto_a
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    const-string/jumbo p3, "PackageInformation"

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    iget-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "isInstalledList"

    invoke-static {v4, v3}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_f

    const-string/jumbo p2, "is installed. but info_list is null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_f
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v1, " is registered to info_list (replace)"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    invoke-static {p3, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_b

    :cond_10
    const-string v4, " is registered to info_list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :goto_b
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    goto :goto_c

    :cond_11
    const-string p2, " are different in info_list"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_12
    const-string/jumbo p2, "PackageInfo in info_list"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    :cond_13
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    :cond_15
    return-void
.end method

.method public final printCurInfo(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageInformation"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-- initiating :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-- originating :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-- sdkVersion :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sdkVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-- ASKS Version : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-- device "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "enable CheckZipFormat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "disable CheckZipFormat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "enable limitCallPem"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "disable limitCallPem"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "enable isOnlyKorMCC"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "disable isOnlyKorMCC"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "enable Mobile Option"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string/jumbo p0, "disable Mobile Option"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "-- download Url :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "-- Domain :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "-- IP :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "-- DH :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->hashDomain:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "-- referral Url : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, p0

    :goto_4
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const-string v4, "DEBUG pkg:"

    const/4 v5, 0x0

    if-ge p1, v3, :cond_5

    :try_start_0
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    const-string v4, " sig ["

    const-string/jumbo v6, "]::"

    invoke-static {p1, v3, v4, v6, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pkgNameHash::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apkFileHash::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " api::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :goto_7
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG pem:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_7
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    if-eqz p1, :cond_8

    :goto_8
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    array-length p1, p1

    if-ge p0, p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DEBUG servicePem:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_8
    const-string/jumbo p0, "isInstalledList"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG isInstalledList "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo p0, "requestInstallerZip"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG requestInstallerZip "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo p0, "overlay"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG overlay "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo p0, "blockExecute"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG blockExecute "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo p0, "allowExecute"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG allowExecute "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string/jumbo p0, "initType"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG initType "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo p0, "accessibility"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG accessibility "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string/jumbo p0, "hasReqInstallPEM"

    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG hasReqInstallPEM "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public final readASKSFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo p0, "Only the system can claim readASKSFiles"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0

    :cond_1
    const-string/jumbo p0, "No file exists"

    return-object p0
.end method

.method public final readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readPackage() : packageName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AASA_ASKSManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_7

    :cond_1
    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "restrict"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    invoke-static {p1, v4, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "emmode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "delete"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "version"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "datelimit"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v6, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown element under <pkg>: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASKSManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final refreshInstalledUnknownList_NEW()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const-string/jumbo v3, "PackageInformation"

    if-eqz v2, :cond_0

    const-string/jumbo p0, "installedUnknownList is null"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "ro.product.model"

    const-string/jumbo v4, "Unknown"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/16 v4, 0x1b

    invoke-static {v4, v2}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ""

    const-string v10, " hash:"

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "try to check "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v10, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-static {v8, v9, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/UnknownStore;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_0

    :cond_3
    const-string v8, "ALL"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "try to check(ALL) "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v10, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/UnknownStore;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ASKS Unknown List  NEW: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v0, "persist.sys.unica.asks"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "isInstalledList"

    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v4}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v6, 0x8000000

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR:: Abnormal App : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0, v4}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final setASKSPolicyVersion(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo p0, "Only the system can claim setASKSPolicyVersion"

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo p0, "security.ASKS.policy_version"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setASKSPolicyVersion() : Numberformat exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AASA_ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setSafeInstallSAInfoForTrustStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "signature"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "policy"

    const-string/jumbo p2, "block"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "module"

    const-string p2, "AutoBlocker"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "initiatingPackageName"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "originatingPackageName"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "ts_sts"

    invoke-direct {p1, p3, p2, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    return-void
.end method

.method public final setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "using"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "asksVersion"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    const-wide/16 v1, 0x2336

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo v1, "updatePolicy"

    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    return-void
.end method

.method public final setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V
    .locals 4

    const-string/jumbo v0, "PackageInformation"

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4B5-399-9751101"

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventName:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-string/jumbo v3, "feature"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkg_name"

    const-string/jumbo v3, "com.samsung.aasaservice"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v2, "dimension"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClassCastException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.diagmonagent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/asks/ASKSManagerService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "Context is null, failed to send SA"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final setTrustTimebyStatusChanged()V
    .locals 6

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "setTrustTimebyStatusChanged : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string/jumbo p0, "mContext is null. "

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    aget-object v0, v0, v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    return-void
.end method

.method public final systemReady()V
    .locals 4

    const-string/jumbo v0, "Only the system can claim the system is ready"

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "security.ASKS.rufs_enable"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    const-string/jumbo p0, "ro.build.date.utc"

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string/jumbo v2, "security.ASKS.expiration_date"

    if-gez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .locals 16

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKSRNEW.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "Policy"

    const/4 v6, 0x1

    const-string v7, "AASA_ASKSManager_RESTRICTED"

    if-nez v3, :cond_0

    const-string/jumbo v0, "There is no restict rule in system."

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    if-eq v8, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v9, "VERSION"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v10, "value"

    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v11, v4

    :goto_1
    move-object v12, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto/16 :goto_6

    :cond_2
    move-object v9, v4

    move-object v11, v9

    goto :goto_1

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v13, v6, :cond_c

    const/4 v14, 0x3

    const-string/jumbo v15, "PACKAGE"

    if-ne v13, v14, :cond_7

    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v14, p1

    invoke-virtual {v1, v11, v8, v14}, Lcom/android/server/asks/ASKSManagerService;->isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v9, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    iput-object v5, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_3
    move-object v12, v4

    goto :goto_2

    :cond_5
    move-object/from16 v14, p1

    const-string/jumbo v12, "The package information is wrong."

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v14, p1

    goto :goto_5

    :cond_7
    move-object/from16 v14, p1

    const/4 v6, 0x4

    if-ne v13, v6, :cond_9

    :cond_8
    :goto_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string/jumbo v6, "name"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_4

    :cond_a
    const-string v13, "CERT"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const-string/jumbo v6, "RESTRICT"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    iput-object v5, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-static {v0, v6, v9}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v6

    goto :goto_4

    :cond_c
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    :goto_a
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "There is no restricted rule."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "updateRestictRule() : current restricted rule("

    const-string/jumbo v12, "Token"

    if-eqz v10, :cond_11

    iget-object v10, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/asks/ASKSManagerService$Restrict;

    const-string/jumbo v14, "updateRestrictRule() : new restricted rule exists."

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_f

    iget-object v14, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v6, ") is from Token. Skipped."

    invoke-static {v11, v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    if-eqz v10, :cond_10

    iget-object v8, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v13, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v10, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-le v8, v10, :cond_e

    :cond_10
    iput-object v13, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateRestrictRule() : update restricted rule for "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/4 v3, 0x1

    goto :goto_b

    :cond_11
    const-string/jumbo v8, "updateRestrictRule() : new restricted rule doesn\'t exists."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v8, :cond_12

    iget-object v8, v8, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iput-object v4, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateRestrictRule() : remove restricted rule for "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    iget-object v8, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v8, :cond_e

    iget-object v8, v8, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, ") is from Token. not removed."

    invoke-static {v8, v6, v9, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_13
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-nez v4, :cond_14

    goto :goto_e

    :cond_14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_d

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateRestrictRule() : new restricted rule for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    iput-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    :goto_e
    return v3
.end method

.method public final updateRestrictedTargetPackages()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    iget-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iget-object v3, v3, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v3, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "DENY"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/content/pm/ASKSManager;->updateRestrictedTargetPackages(Ljava/util/HashMap;)V

    return-void
.end method

.method public final verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p6

    move-object/from16 v2, p7

    const-string/jumbo v5, "Only the system can claim verifyASKStokenForPackage"

    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    iput-boolean v10, v1, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "readyForBooting : "

    const-string v11, "AASA_ASKSManager_SECURETIME"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    const-string/jumbo v5, "context is null. "

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v10, v5, v6, v11, v12}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-ne v6, v8, :cond_3

    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v7, :cond_2

    move v6, v7

    :cond_2
    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v6, v11, v12, v13, v14}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ASKS_VERSION: 9.4  ::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "AASA_ASKSManager"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initiating = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", installer = "

    invoke-static {v5, v6, v4, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    const/4 v12, 0x0

    invoke-static {v5, v3, v12}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string v15, "ASKS"

    const/16 p8, -0x7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    :try_start_0
    invoke-static {v0, v15}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v13, v12

    :goto_1
    invoke-static {v5, v3, v13}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v14, :cond_5

    return p8

    :cond_4
    move-object v13, v12

    :cond_5
    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, ""

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    iput-object v3, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v12, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    iput-boolean v10, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    iput-object v12, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    iput v14, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    iput-object v12, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    iput-object v12, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    iput-object v3, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v13, :cond_7

    iput-object v13, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    :cond_7
    invoke-virtual/range {p5 .. p5}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/Signature;

    iput-object v10, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    move-object/from16 v10, p5

    invoke-static {v3, v10}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v10

    if-eq v10, v14, :cond_3a

    iput-boolean v9, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    const-string v13, " "

    const-string/jumbo v7, "cannot found package information - "

    const-string/jumbo v9, "wrong installer - "

    const-string/jumbo v12, "checking initiating = "

    const-string/jumbo v17, "ro.boot.em.status"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "0x1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string/jumbo v1, "persist.sys.unica.asks"

    const-string/jumbo v14, "true"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :try_start_1
    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    iget-object v1, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0, v15}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    :try_start_2
    iget-object v1, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    const/16 v8, 0x10

    :try_start_3
    invoke-static {v8, v1, v15}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v8, -0x1

    if-eq v1, v8, :cond_a

    const-string v1, " is in allowlist"

    if-eqz v14, :cond_9

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    const/4 v14, -0x1

    :goto_3
    const/4 v15, -0x1

    goto/16 :goto_24

    :catch_2
    move-exception v0

    :goto_4
    move-object v2, v5

    const/4 v7, 0x0

    :goto_5
    const/4 v14, -0x1

    goto/16 :goto_d

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "anyway continue to check whether this binary is not official"

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :try_start_5
    iget-object v1, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v15, 0x9

    :try_start_6
    invoke-static {v15, v1, v8}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    const-string/jumbo v8, "anyway continue to install since this binary is not official"

    const/4 v15, -0x1

    if-eq v1, v15, :cond_c

    if-eqz v14, :cond_b

    move/from16 v14, p8

    move-object v2, v5

    goto :goto_3

    :cond_b
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is in BlackList, so fail to install"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v5, v0}, Lcom/android/server/asks/ASKSManagerService;->isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eqz v2, :cond_11

    const-string/jumbo v1, "com.android.shell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xb

    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v15, -0x1

    if-eq v1, v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    const-string/jumbo v7, "android"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_d

    const-string/jumbo v1, "cannot find android pkg"

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v1

    if-nez v1, :cond_e

    :goto_6
    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    :goto_7
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    const-string/jumbo v1, "PrePackageInstaller"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    const/4 v1, 0x0

    :goto_9
    const/4 v7, 0x0

    move-object v2, v5

    move v6, v10

    move v5, v1

    move-object/from16 v1, p0

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    :try_start_8
    invoke-static {v0, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v15, -0x1

    if-eq v1, v15, :cond_12

    move-object/from16 v1, p0

    move-object v2, v5

    move v6, v10

    const/4 v5, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v1, p0

    move-object v2, v5

    move v6, v10

    const/4 v5, 0x0

    :goto_a
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v4

    if-nez v4, :cond_13

    const-string v0, "AASA OK"

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_13
    if-eqz v14, :cond_19

    rem-int/2addr v4, v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_18

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    const/4 v5, 0x4

    if-eq v4, v5, :cond_16

    const/4 v0, 0x5

    if-eq v4, v0, :cond_15

    const/4 v0, 0x6

    if-eq v4, v0, :cond_14

    move/from16 v14, p8

    goto :goto_b

    :cond_14
    const/16 v14, -0xbbe

    goto :goto_b

    :cond_15
    const/16 v14, -0xbb9

    goto :goto_b

    :cond_16
    const/16 v14, -0xbb8

    goto :goto_b

    :cond_17
    const/16 v14, -0xbba

    goto :goto_b

    :cond_18
    const/16 v14, -0xbbc

    :goto_b
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returnValue : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto :goto_d

    :cond_19
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fail to install"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v2, v5

    goto/16 :goto_5

    :cond_1a
    move-object v2, v5

    const/4 v7, 0x0

    if-eqz v14, :cond_1b

    const/16 v14, -0xbbb

    goto/16 :goto_3

    :cond_1b
    :goto_c
    const/4 v14, -0x1

    goto :goto_e

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ADP.xml"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "AASA_ASKSManager_ADP"

    if-nez v5, :cond_1d

    const-string/jumbo v5, "file does not exist - /data/system/.aasa/AASApolicy/ADP.xml"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_33

    :try_start_c
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v5, v7

    :goto_f
    :try_start_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v8, v9, :cond_1e

    if-eq v8, v10, :cond_1e

    goto :goto_10

    :cond_1e
    move-object/from16 v16, v5

    move-object v8, v7

    move-object v9, v8

    move-object v12, v9

    move-object v15, v12

    const/16 v18, -0x1

    :goto_11
    :try_start_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eq v5, v10, :cond_31

    const-string/jumbo v10, "pattern"

    move/from16 p2, v14

    const-string v14, "HASHVALUE"

    const/4 v1, 0x3

    if-eq v5, v1, :cond_27

    const/4 v1, 0x4

    if-ne v5, v1, :cond_1f

    goto/16 :goto_16

    :cond_1f
    :try_start_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    :catchall_0
    move-exception v0

    :goto_12
    move-object v1, v0

    goto/16 :goto_1f

    :catch_8
    move-exception v0

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    goto/16 :goto_1e

    :cond_20
    const-string/jumbo v14, "versionType"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v14, :cond_21

    const/4 v14, 0x0

    :try_start_10
    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_13
    move/from16 v18, v5

    goto :goto_15

    :catch_a
    :try_start_11
    const-string v5, "ERROR: does not match versionType"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_21
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_15

    :cond_22
    const-string/jumbo v10, "hashCode"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    goto :goto_15

    :cond_23
    const-string/jumbo v10, "sep"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const v10, 0x29810

    if-lt v10, v5, :cond_24

    goto :goto_15

    :catch_b
    :try_start_13
    const-string/jumbo v5, "NumberFormatExceptionn"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_14
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v18, -0x1

    goto :goto_15

    :cond_25
    const-string/jumbo v10, "format"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :cond_26
    :goto_15
    move/from16 v14, p2

    const/4 v10, 0x1

    goto/16 :goto_11

    :cond_27
    const/4 v1, 0x4

    :goto_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    if-eqz v9, :cond_29

    if-eqz v8, :cond_29

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_28

    goto :goto_17

    :cond_28
    new-instance v5, Lcom/android/server/asks/ADPContainer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v9, v5, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    goto :goto_18

    :cond_29
    :goto_17
    const/4 v5, 0x0

    :goto_18
    if-nez v5, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not make ADP object"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2a
    iget-object v8, v5, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_15

    :cond_2b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    if-eqz v12, :cond_2d

    if-eqz v15, :cond_2d

    move/from16 v5, v18

    const/4 v10, -0x1

    if-ne v5, v10, :cond_2c

    goto :goto_19

    :cond_2c
    new-instance v10, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v12, v10, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    iput-object v15, v10, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    iput v5, v10, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    iput-object v7, v10, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    goto :goto_1a

    :cond_2d
    move/from16 v5, v18

    :goto_19
    const/4 v10, 0x0

    :goto_1a
    if-nez v10, :cond_2e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not make ADPPolicy object"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2e
    if-nez v8, :cond_2f

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_14

    :cond_30
    move/from16 v5, v18

    goto/16 :goto_15

    :cond_31
    move/from16 p2, v14

    if-eqz v16, :cond_34

    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_21

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_d
    move-exception v0

    :goto_1b
    move/from16 p2, v14

    goto :goto_1d

    :catch_e
    move-exception v0

    :goto_1c
    move/from16 p2, v14

    goto :goto_1e

    :catchall_1
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_12

    :catch_f
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_1b

    :catch_10
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_1c

    :goto_1d
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v16, :cond_34

    :try_start_16
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_21

    :goto_1e
    :try_start_17
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v16, :cond_34

    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    goto :goto_21

    :goto_1f
    if-eqz v16, :cond_32

    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    goto :goto_20

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_32
    :goto_20
    throw v1

    :cond_33
    move/from16 p2, v14

    :cond_34
    :goto_21
    iget-object v0, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "target ADP - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer;

    iget-object v1, v1, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "target list has size "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    const/16 v1, -0xbbd

    if-eqz v0, :cond_37

    const-string/jumbo v4, "picked one adp policy"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const v7, 0x65837583

    if-ne v5, v7, :cond_36

    iget-object v5, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    if-nez v5, :cond_35

    move v10, v14

    goto :goto_22

    :cond_35
    iget-object v5, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_22

    :cond_36
    iget-object v0, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    :goto_22
    if-nez v10, :cond_38

    const-string/jumbo v0, "install fail, cannot back to the previous version"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    move v14, v1

    goto/16 :goto_3

    :cond_37
    const-string/jumbo v0, "cannot get target policy"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_38
    const-string/jumbo v0, "successs"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const-string v0, " is installing.."

    invoke-static {v13, v3, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v14, p2

    goto/16 :goto_3

    :goto_24
    if-eq v14, v15, :cond_3b

    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_3a
    move v15, v14

    :cond_3b
    :goto_25
    return v14
.end method

.method public final verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 53

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v5, "AASA_ASKSManager_EM"

    const-string v6, "AASA_ASKSManager_DELETABLE"

    const-string/jumbo v7, "false"

    const-string/jumbo v8, "NONE"

    const-string v9, " "

    const-string v10, "ASKSRNEWCARRIERS"

    const-string v11, "ASKSRNEWMODELS"

    const-string v12, "ADPCARRIERS"

    const-string v13, "ADPMODELS"

    const-string v14, "CHECK"

    const-string v15, "AFTER"

    move-object/from16 v16, v9

    const-string v9, "BEFORE"

    move-object/from16 v17, v10

    const-string/jumbo v10, "RUFS"

    move-object/from16 v18, v11

    const-string/jumbo v11, "MODELS"

    move-object/from16 v19, v12

    const-string v12, "EMMODE"

    move-object/from16 v20, v13

    const-string v13, "EXPIRED"

    move-object/from16 v21, v14

    const-string v14, "CARRIERS"

    move-object/from16 v22, v15

    const-string/jumbo v15, "RESTRICT"

    move-object/from16 v23, v9

    const-string v9, " Token 0:"

    move-object/from16 v24, v10

    const-string/jumbo v10, "installer::"

    move-object/from16 v25, v5

    const-string/jumbo v5, "Violate security policy of MSTG. Package("

    move-object/from16 v26, v12

    const-string v12, " ERROR: AASA_VerifyToken "

    move-object/from16 v27, v6

    const-string v6, "AASA_ASKSManager"

    const-string v0, " AASA_VerifyToken START "

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v15

    :try_start_0
    new-instance v15, Landroid/util/jar/StrictJarFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_1
    invoke-direct {v15, v0, v14, v13}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p4, :cond_0

    :try_start_2
    const-string v13, "/data/"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :catch_0
    move-exception v0

    move-object/from16 v33, v15

    const/4 v13, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v33, v15

    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_0
    const/4 v13, 0x0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    move/from16 p4, v13

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    long-to-int v13, v13

    new-array v13, v13, [B

    invoke-static {v15, v0, v13}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    move-object/from16 v33, v15

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v0, v1, v14, v13, v15}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v15, v33

    goto/16 :goto_27

    :catch_2
    move-exception v0

    :goto_1
    move/from16 v13, p4

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_2
    move/from16 v13, p4

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v33, v15

    goto/16 :goto_27

    :catch_4
    move-exception v0

    move-object/from16 v33, v15

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v33, v15

    goto :goto_2

    :cond_1
    move/from16 p4, v13

    move-object/from16 v33, v15

    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {v33 .. v33}, Landroid/util/jar/StrictJarFile;->close()V

    move/from16 v13, p4

    move-object v15, v0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 p4, v13

    move-object/from16 v33, v15

    goto :goto_6

    :catch_7
    move-exception v0

    move/from16 p4, v13

    move-object/from16 v33, v15

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_27

    :catch_8
    move-exception v0

    :goto_4
    const/4 v13, 0x0

    const/16 v33, 0x0

    goto :goto_6

    :catch_9
    move-exception v0

    :goto_5
    const/4 v13, 0x0

    const/16 v33, 0x0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    goto :goto_4

    :goto_6
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v33, :cond_2

    :goto_7
    invoke-virtual/range {v33 .. v33}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_2
    const/4 v15, 0x0

    goto :goto_9

    :catch_b
    move-exception v0

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    goto :goto_5

    :goto_8
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v33, :cond_2

    goto :goto_7

    :goto_9
    const-string v0, " ERROR: plz check certification in the device - Fail to check integrity"

    if-nez v15, :cond_3

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    return v0

    :cond_3
    array-length v12, v15

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    array-length v12, v15

    const/4 v14, 0x2

    if-ne v12, v14, :cond_5

    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_25

    :cond_5
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_14

    const/16 p0, 0x15

    :try_start_9
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v14, 0x0

    invoke-interface {v0, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_c

    :try_start_a
    const-string/jumbo v12, "MODE"

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v14}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->isInteger(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    goto/16 :goto_23

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_c

    const-string v14, "CROSSDOWN"

    move/from16 v33, v13

    const-string/jumbo v13, "PACKAGE"

    const-string v1, "DIGEST"

    move-object/from16 v34, v11

    const-string v11, "CREATE"

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_23

    :cond_7
    :try_start_b
    const-string/jumbo v35, "PACKAGE"

    const-string v36, "DIGEST"

    const-string v37, "CREATE"

    const-string/jumbo v38, "MODELS"

    const-string v39, "CARRIERS"

    const-string v40, "EXPIRED"

    const-string/jumbo v41, "RESTRICT"

    const-string v42, "DATELIMIT"

    const-string v43, "CROSSDOWN"

    const-string/jumbo v44, "RUFS"

    const-string v45, "BEFORE"

    const-string v46, "AFTER"

    const-string v47, "CHECK"

    const-string v48, "EMMODE"

    const-string v49, "ADPMODELS"

    const-string v50, "ADPCARRIERS"

    const-string v51, "ASKSRNEWMODELS"

    const-string v52, "ASKSRNEWCARRIERS"

    filled-new-array/range {v35 .. v52}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_24

    :catch_d
    move-exception v0

    goto/16 :goto_21

    :catch_e
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_22

    :cond_8
    const-string/jumbo v35, "PACKAGE"

    const-string v36, "DIGEST"

    const-string v37, "CREATE"

    const-string/jumbo v38, "MODELS"

    const-string v39, "CARRIERS"

    const-string v40, "EXPIRED"

    const-string/jumbo v41, "RESTRICT"

    const-string v42, "DATELIMIT"

    const-string v43, "CROSSDOWN"

    const-string/jumbo v44, "RUFS"

    const-string v45, "BEFORE"

    const-string v46, "AFTER"

    const-string v47, "CHECK"

    const-string v48, "EMMODE"

    const-string v49, "ADPMODELS"

    const-string v50, "ADPCARRIERS"

    const-string v51, "ASKSRNEWMODELS"

    const-string v52, "ASKSRNEWCARRIERS"

    filled-new-array/range {v35 .. v52}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_9
    if-eqz v33, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is blocked. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->writeBlockApkList(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.providers.settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    const-string/jumbo v0, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string/jumbo v0, "THIS IS WORKAROUND FOR CTS FAIL. MUST ROLLBACK"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/16 v30, 0x0

    goto/16 :goto_20

    :cond_b
    const/16 v0, 0xf

    return v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v13, v11, v1, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_d

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_e

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x1

    if-ne v4, v13, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OK:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_d

    :cond_e
    move v2, v5

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v1, "OK:HASH"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NOT OK:HASH : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " comp : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_10
    add-int/2addr v2, v5

    :goto_e
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_c

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "ro.build.2ndbrand"

    if-eqz v1, :cond_16

    :try_start_c
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_10

    :cond_11
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_c

    const-string/jumbo v9, "OK:CROSSDOWN"

    if-nez v1, :cond_12

    :try_start_d
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_13

    const-string v0, "FAILED CROSSDOWN for sep lite"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x92

    return v0

    :cond_13
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v29, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_14

    const-string v0, "FAILED CROSSDOWN for galaxy"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9c

    return v0

    :cond_14
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_f
    move-object/from16 v1, v34

    goto :goto_11

    :cond_16
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move/from16 v4, p5

    const/4 v13, 0x1

    if-eq v4, v13, :cond_15

    const/4 v1, 0x2

    if-eq v4, v1, :cond_15

    const/4 v1, 0x4

    if-ne v4, v1, :cond_17

    goto :goto_f

    :cond_17
    const-string v1, "Error : No value CROSSDOWN in 2ndbrand."

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v5, v32

    goto :goto_13

    :cond_18
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_12

    :goto_13
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const/4 v13, 0x1

    if-ne v4, v13, :cond_19

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "Error : CARRIERS"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_19
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1a
    :goto_14
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_c

    :try_start_e
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_1b

    const-string/jumbo v4, "createDate is bigger than today."

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->setTrustTimeByToken(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setVersion(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_c

    :goto_15
    move-object/from16 v5, v31

    goto :goto_16

    :catch_f
    :try_start_f
    const-string v0, "Error : CREATE-NumberFormatException"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :cond_1c
    move-object/from16 v4, p1

    const-string v1, "Error : CREATE in asks case."

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    const/4 v1, 0x0

    goto :goto_15

    :goto_16
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXPIRED : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_c

    :try_start_10
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xe

    if-le v7, v9, :cond_1d

    const-string/jumbo v0, "createDate is bigger than expiredDate."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v3, v5, :cond_1e

    const-string/jumbo v0, "today Date is bigger than expiredDate."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_c

    return v10

    :cond_1e
    move-object/from16 v3, v28

    goto :goto_17

    :catch_10
    :try_start_11
    const-string v0, "EXPIRED : NumberFormatException"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :goto_17
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "DELETE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_c

    const-string v7, "DATELIMIT"

    if-eqz v5, :cond_21

    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "type : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v27

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setDateLimit(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_18

    :cond_1f
    const-string v1, "FAIL: DATELIMIT in deletable"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    :cond_20
    :goto_18
    move-object/from16 v1, v26

    goto :goto_1a

    :cond_21
    new-instance v5, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom()V

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    goto :goto_19

    :cond_22
    const-string v1, "AASA_ASKSManager_RESTRICTED"

    const-string v3, "FAIL: DATELIMIT in restricted."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    :goto_19
    if-eqz v5, :cond_23

    const-string/jumbo v1, "REVOKE"

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v14, 0x0

    invoke-interface {v3, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V

    :cond_23
    invoke-virtual {v4, v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    goto :goto_18

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMMODE : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v25

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_c

    :try_start_13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setEMMode(I)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_24
    move-object/from16 v1, v24

    goto :goto_1b

    :catch_11
    :try_start_14
    const-string v0, "EMMODE : NumberFormatException"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_c

    const-string v7, "AASA_ASKSManager_RUFS"

    if-eqz v5, :cond_29

    :try_start_15
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    move-object/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v10}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    invoke-virtual {v10, v1}, Lcom/android/server/asks/RUFSContainer;->setPolicyVersion(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/asks/RUFSContainer;->setDeltaPolicyVersion()V

    invoke-virtual {v10}, Lcom/android/server/asks/RUFSContainer;->setIsDelta()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_c

    :try_start_16
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/server/asks/RUFSContainer;->setSizeofZip(J)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/server/asks/RUFSContainer;->setSizeofFiles(J)V

    invoke-virtual {v10, v9}, Lcom/android/server/asks/RUFSContainer;->setDigest(Ljava/lang/String;)V

    const/4 v13, 0x1

    iput-boolean v13, v10, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    const-string v1, " SET RUFS TOKEN True!"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_c

    :goto_1c
    move-object/from16 v1, v20

    goto :goto_1d

    :catch_12
    const/4 v14, 0x0

    :try_start_17
    iput-boolean v14, v10, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    const-string v1, " SET RUFS TOKEN False!"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/android/server/asks/RUFSContainer;->setADPModels(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/android/server/asks/RUFSContainer;->setADPCarriers(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWModels(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWCarriers(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v4, v10}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V

    goto :goto_1f

    :cond_27
    const-string v0, "ERROR: CHECK in RUFS"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_28
    const-string v0, "ERROR: AFTER in RUFS"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_29
    const-string v0, "ERROR: BEFORE in RUFS"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_2a
    :goto_1f
    if-nez v2, :cond_2b

    const-string v0, " Pass ALL"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :goto_20
    return v30

    :cond_2b
    const-string v0, " Fail: auth"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_c

    const/16 v0, 0xdd

    return v0

    :goto_21
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_c

    move-object/from16 v2, v16

    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_23

    :catch_13
    move-exception v0

    goto :goto_24

    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_13

    :goto_23
    return p0

    :catch_14
    move-exception v0

    move-object/from16 v2, v16

    const/16 p0, 0x15

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :goto_25
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    :try_start_1a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_15

    goto :goto_26

    :catch_15
    move/from16 v15, v30

    :goto_26
    return v15

    :goto_27
    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_2c
    throw v0
.end method

.method public final writeState()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "safeinstall"

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "delta"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "safeinstall"

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "asks"

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v7, :cond_0

    iget-object v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v9, -0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v8, :cond_0

    :goto_1
    const-string/jumbo v8, "package"

    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-virtual {v4, v1, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v6, :cond_4

    const-string/jumbo v8, "restrict"

    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "type"

    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "datelimit"

    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "from"

    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "REVOKE"

    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "permission"

    invoke-virtual {v4, v1, v12}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "value"

    invoke-virtual {v4, v1, v12, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "permission"

    invoke-virtual {v4, v1, v11}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    const-string/jumbo v6, "restrict"

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    if-eq v6, v9, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "emmode"

    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "value"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "emmode"

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v6, :cond_6

    const-string/jumbo v7, "delete"

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "version"

    iget-object v8, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    invoke-virtual {v4, v1, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "datelimit"

    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    invoke-virtual {v4, v1, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "delete"

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-string/jumbo v6, "package"

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "asks"

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v1, "security.ASKS.policy_version"

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    const-string v3, "AASA_ASKSManager"

    const-string v4, "Failed to write state, restoring backup"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_a

    :catch_1
    move-exception p0

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    :goto_6
    :try_start_6
    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_8
    :goto_7
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :goto_8
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :catch_5
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_9
    throw p0

    :goto_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0
.end method

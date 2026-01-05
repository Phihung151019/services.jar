.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final appset:Ljava/util/Set;

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public static pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;


# instance fields
.field public dataEntry:Ljava/util/List;

.field public mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public registeredDataRecipients:Ljava/util/List;

.field public startTimer:J

.field public syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    return-void
.end method

.method public static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "which "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "unable to find the packages for uid: "

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for processName: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_1
    array-length v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v5, p0, :cond_2

    iget-object v0, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    aget-object v5, v2, v0

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v5, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "for package "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "for uid "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xf

    if-le p1, v2, :cond_6

    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v4, p0

    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v8, v6

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v9

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return-object v9

    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-object v1
.end method

.method public static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "for uid "

    const-string/jumbo v3, "for package "

    const-string/jumbo v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v5, "unable to find the file location for the process:"

    const/16 v6, 0xf

    if-le v0, v6, :cond_2

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_2
    move-object v9, v4

    move-object v4, p2

    move-object p2, v9

    move-object v9, v5

    move-object v5, p3

    move-object p3, v9

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object v7, v5

    move v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v8

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v1
.end method

.method public static getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .locals 28

    move-object/from16 v1, p0

    const-string/jumbo v2, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v3, "iface"

    const-string/jumbo v4, "hostname"

    if-nez p1, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_1e

    :cond_1
    move-object/from16 v6, p1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v0, "brecv"

    const-string/jumbo v11, "end"

    const-string/jumbo v12, "start"

    const-string/jumbo v13, "bsent"

    const-string/jumbo v14, "protocol"

    const-string/jumbo v15, "sport"

    const-string/jumbo v5, "dst"

    move-object/from16 p1, v6

    const-string/jumbo v6, "src"

    move/from16 v17, v8

    const-string/jumbo v8, "recordtype"

    move/from16 v18, v10

    const-string/jumbo v10, "parentprochash"

    move-object/from16 v19, v7

    const-string/jumbo v7, "prochash"

    move-object/from16 v20, v2

    const-string/jumbo v2, "procname"

    move-object/from16 v21, v3

    const-string/jumbo v3, "dnsuid"

    move-object/from16 v22, v3

    const-string/jumbo v3, "uid"

    move-object/from16 v23, v4

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iget v9, v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I

    move-object/from16 v24, v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v25, v11

    const/4 v11, 0x0

    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v26, :cond_5

    :try_start_2
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v12

    iget v12, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-nez v26, :cond_4

    :try_start_3
    invoke-static {v4, v12, v11}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v26, v13

    if-lez v1, :cond_3

    const/4 v13, 0x3

    if-ne v1, v13, :cond_2

    :catch_0
    :goto_1
    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_1d

    :cond_2
    if-eq v11, v12, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    const/4 v11, 0x0

    goto :goto_6

    :goto_4
    move-object/from16 v2, v21

    move-object/from16 v1, v23

    goto/16 :goto_1b

    :goto_5
    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    goto/16 :goto_1c

    :cond_4
    move-object/from16 v26, v13

    if-eq v11, v12, :cond_3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_5
    move-object/from16 v27, v12

    move-object/from16 v26, v13

    goto :goto_3

    :goto_6
    :try_start_4
    invoke-virtual {v4, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x8000

    and-int/2addr v1, v9

    if-nez v1, :cond_6

    if-nez v9, :cond_7

    :cond_6
    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    and-int/lit16 v1, v9, 0x100

    const-string/jumbo v8, "pid"

    if-nez v1, :cond_8

    if-nez v9, :cond_9

    :cond_8
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v4, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    and-int/lit16 v1, v9, 0x1000

    const-string/jumbo v11, "puid"

    if-nez v1, :cond_a

    if-nez v9, :cond_b

    :cond_a
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v4, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    and-int/lit16 v1, v9, 0x2000

    if-nez v1, :cond_c

    if-nez v9, :cond_d

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    and-int/lit8 v1, v9, 0x8

    if-nez v1, :cond_e

    if-nez v9, :cond_f

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    and-int/lit16 v1, v9, 0x4000

    if-nez v1, :cond_10

    if-nez v9, :cond_11

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v4, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_11
    and-int/lit8 v1, v9, 0x10

    const-string/jumbo v5, "dport"

    if-nez v1, :cond_12

    if-nez v9, :cond_13

    :cond_12
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    and-int/lit16 v1, v9, 0x800

    if-nez v1, :cond_14

    if-nez v9, :cond_15

    :cond_14
    const/4 v1, 0x0

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_8

    :goto_7
    invoke-virtual {v4, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    :catch_3
    :cond_16
    move-object/from16 v2, v21

    move-object/from16 v1, v23

    goto/16 :goto_1a

    :cond_17
    and-int/lit16 v1, v9, 0x400

    if-nez v1, :cond_18

    if-nez v9, :cond_19

    :cond_18
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_19
    and-int/lit16 v1, v9, 0x200

    const-string v6, "0"

    if-nez v1, :cond_1a

    if-nez v9, :cond_1b

    :cond_1a
    const/4 v1, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v1, 0x0

    goto :goto_d

    :goto_a
    :try_start_9
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    :try_start_a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const/4 v1, 0x0

    goto :goto_b

    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    :catch_4
    const/4 v1, 0x0

    goto :goto_c

    :goto_b
    :try_start_b
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_d

    :catch_5
    :goto_c
    :try_start_c
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    and-int/lit16 v2, v9, 0x80

    const-string/jumbo v3, "parentprocname"

    if-nez v2, :cond_1e

    if-nez v9, :cond_1f

    :cond_1e
    :try_start_d
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_1f
    const/high16 v1, 0x40000

    and-int/2addr v1, v9

    const-string/jumbo v2, "ppid"

    if-nez v1, :cond_20

    if-nez v9, :cond_21

    :cond_20
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x0

    goto :goto_12

    :goto_f
    :try_start_e
    invoke-virtual {v4, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v7, :cond_21

    if-eqz v3, :cond_21

    :try_start_f
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_22
    const/4 v1, 0x0

    goto :goto_10

    :cond_23
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_e

    :catch_6
    const/4 v1, 0x0

    goto :goto_11

    :goto_10
    :try_start_10
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_12

    :catch_7
    :goto_11
    :try_start_11
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_12
    and-int/lit8 v3, v9, 0x2

    if-nez v3, :cond_24

    if-nez v9, :cond_25

    :cond_24
    move-object/from16 v3, v26

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25
    and-int/lit8 v1, v9, 0x40

    if-nez v1, :cond_26

    if-nez v9, :cond_27

    :cond_26
    move-object/from16 v3, v27

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    and-int/lit8 v1, v9, 0x4

    if-nez v1, :cond_28

    if-nez v9, :cond_29

    :cond_28
    move-object/from16 v3, v25

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    and-int/lit8 v1, v9, 0x1

    if-nez v1, :cond_2a

    if-nez v9, :cond_2b

    :cond_2a
    move-object/from16 v3, v24

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :cond_2b
    and-int/lit8 v1, v9, 0x20

    if-nez v1, :cond_2c

    if-nez v9, :cond_2d

    :cond_2c
    move-object/from16 v1, v23

    const/4 v11, 0x0

    goto :goto_13

    :cond_2d
    move-object/from16 v1, v23

    goto :goto_14

    :goto_13
    :try_start_12
    invoke-virtual {v4, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :goto_14
    const/high16 v3, 0x10000

    and-int/2addr v3, v9

    if-nez v3, :cond_2e

    if-nez v9, :cond_2f

    :cond_2e
    const/4 v11, 0x0

    goto :goto_15

    :cond_2f
    const/4 v11, 0x0

    goto :goto_16

    :goto_15
    :try_start_13
    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    const-string v5, "53"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    if-eqz v3, :cond_30

    move-object/from16 v3, v22

    :try_start_14
    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    :cond_30
    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_16

    :catch_8
    move-object/from16 v3, v22

    :catch_9
    :try_start_15
    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    :goto_16
    const/high16 v3, 0x20000

    and-int/2addr v3, v9

    if-nez v3, :cond_32

    if-nez v9, :cond_33

    :cond_32
    invoke-virtual {v4, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    :cond_33
    const/high16 v2, 0x80000

    and-int/2addr v2, v9

    if-nez v2, :cond_34

    if-nez v9, :cond_35

    :cond_34
    move-object/from16 v2, v21

    const/4 v11, 0x0

    goto :goto_17

    :cond_35
    move-object/from16 v2, v21

    goto :goto_18

    :goto_17
    :try_start_16
    invoke-virtual {v4, v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    move-object/from16 v4, v20

    goto :goto_1d

    :catch_a
    move-exception v0

    goto :goto_1b

    :catch_b
    move-exception v0

    :goto_19
    move-object/from16 v4, v20

    goto :goto_1c

    :catch_c
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_1b

    :catch_d
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_19

    :catch_e
    move-exception v0

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    goto :goto_19

    :goto_1a
    move-object/from16 v4, v20

    goto/16 :goto_2

    :goto_1b
    const-string/jumbo v3, "processData: Exception"

    move-object/from16 v4, v20

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :goto_1c
    const-string/jumbo v3, "processData: JSONException"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :goto_1d
    move-object/from16 v3, v19

    if-eqz v11, :cond_36

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    move-object/from16 v6, p1

    move-object v7, v3

    move/from16 v8, v17

    move/from16 v0, v18

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_37
    move-object v3, v7

    return-object v3

    :goto_1e
    return-object v16
.end method

.method public static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, v1, v4

    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v5, v8, v9, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p0, p1, v5, v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v9, 0x4

    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_4

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    if-eqz v10, :cond_3

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    if-eqz v6, :cond_3

    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    return-object v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v9, 0x8

    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_6

    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    if-eqz v10, :cond_5

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_5

    if-eqz p1, :cond_5

    if-eqz v6, :cond_5

    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    return-object v10

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v9, 0x2

    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_8

    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    if-eqz v10, :cond_7

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_7

    if-eqz p1, :cond_7

    if-eqz v6, :cond_7

    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    return-object v10

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v9, 0x1

    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_a

    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    if-eqz v10, :cond_9

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_9

    if-eqz p1, :cond_9

    if-eqz v6, :cond_9

    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_9

    return-object v10

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-object v0
.end method

.method public static getHash(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "close FileInputStream: IOException"

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v4, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, p0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v3, v2

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    array-length v5, p0

    if-ge v7, v5, :cond_1

    const-string v5, "%02X"

    aget-byte v6, p0, v7

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    goto :goto_4

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_7
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_2

    :catch_8
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_3

    :catch_9
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_4

    :goto_2
    :try_start_4
    const-string/jumbo v5, "getHash: IOException"

    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :goto_3
    :try_start_6
    const-string/jumbo v5, "getHash: FileNotFoundException"

    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :goto_4
    :try_start_8
    const-string/jumbo v5, "getHash: NoSuchAlgorithmException"

    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_2
    :goto_5
    if-nez v3, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_6
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_7

    :catch_a
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_7
    throw p0
.end method

.method public static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_0

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v0, "getPackageHash: Exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_6

    const/4 v2, 0x2

    aget-object v4, v1, v2

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    aget-object v1, v1, v5

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    array-length v4, v1

    const/4 v6, 0x5

    if-lt v4, v6, :cond_2

    aget-object v2, v1, v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v1, v1, v3

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v5, v8, v9, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_5

    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the deamon path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for uid "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    invoke-static {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_5

    return-object v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string/jumbo v2, "__"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRecipientList()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initializeHandlerThread()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataDeliveryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    return-void
.end method

.method public final isDataRecipientPresent(ILjava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final removeDataRecipientsForPackage(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    iget-object v2, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iget v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDataRecipientsForPackage: removing recipient for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeNAPDataRecipient(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

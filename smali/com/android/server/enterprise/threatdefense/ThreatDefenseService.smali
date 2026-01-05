.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.super Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final BRAKET_END_STRING:Ljava/lang/String; = "\\)"

.field static final BRAKET_START_STRING:Ljava/lang/String; = "\\("

.field static final RESTRICTED_CHAR_LIST:[Ljava/lang/String;

.field static final SENSITIVE_PROCESS_PROC_LEN_LIST:[I

.field static final SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

.field static final SENSTIVE_PROCESS_PROC_POSITION:[I

.field public static final sAllowedProcRules:Ljava/util/Hashtable;

.field public static final sAllowedProcessProcRules:Ljava/util/Hashtable;

.field public static final sLock:Ljava/lang/Object;

.field public static final sProcessIds:Landroid/util/SparseArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

.field public final mReceiver:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

.field public final mTimer:Ljava/util/Timer;

.field public final mTimerTask:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    const-string/jumbo v0, "stat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    const/16 v0, 0x34

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    const-string v0, "."

    const-string v1, ";"

    const-string v2, "*"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x1c
        0x1d
        0x1e
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    const-string/jumbo v7, "ThreatDefenseService"

    const-string/jumbo v1, "Start ThreatDefenseService"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    const-string/jumbo v3, "MTDL_Timer"

    invoke-direct {v1, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const-string/jumbo p0, "Timer Scheduled : 86400s"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static updateProcessIds()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_1

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "^[0-9]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v5, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    new-array v10, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v10}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_2

    :catch_2
    move-exception v8

    move v9, v5

    :goto_1
    :try_start_3
    const-string/jumbo v10, "ThreatDefenseService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v8

    move v9, v5

    :goto_2
    const-string/jumbo v10, "ThreatDefenseService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "NumberFormatException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-lez v9, :cond_0

    if-eqz v6, :cond_0

    sget-object v8, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-interface {v6}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string/jumbo v0, "ThreatDefenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Update PIDs took "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public final enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "ThreatDefenseService"

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {v1, p1, p0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->updateProcessIds()V

    const-string/jumbo v0, "all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move p2, v1

    :goto_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_1
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_2
    if-ge v1, p1, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object p2

    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public final hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "ThreatDefenseService"

    const-string v0, "Get package error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    return p1
.end method

.method public hasRestrictCharacter(Ljava/lang/String;)Z
    .locals 4

    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "ThreatDefenseService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x8000000

    invoke-static {p0, v1, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasMultipleSigners"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "getApkContentsSigners() failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "Signature check failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const-string p0, "Get package signature failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid package : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    const-string/jumbo v0, "Please set package rules first : "

    const/16 v1, -0x65

    const-string/jumbo v2, "ThreatDefenseService"

    if-nez p1, :cond_0

    const-string p0, "Get package name failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, -0x67

    const-string v5, "Denied proc = "

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason : Restrict Character"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    const/16 v6, -0x69

    :try_start_0
    new-array v7, v3, [Ljava/lang/String;

    invoke-static {p2, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason : Symbolic Link"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid path p = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    if-eqz p3, :cond_3

    :try_start_1
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v5, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :catch_2
    move-exception p0

    goto/16 :goto_3

    :cond_3
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v5, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const/16 v6, -0x66

    if-nez p3, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v4, v6

    goto :goto_5

    :cond_4
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v3

    :cond_5
    if-ge v5, v0, :cond_7

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "Not allowed proc : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move v4, v3

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "No rules : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const/16 v1, -0x68

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_4
    move v4, v1

    :goto_5
    if-gez v4, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Denied proc : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errno="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4
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
    .locals 0

    return-void
.end method

.method public final procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "IOException"

    const-string v1, "FileNotFoundException : "

    const/4 v2, 0x0

    const-string/jumbo v3, "ThreatDefenseService"

    if-nez p1, :cond_0

    const-string p0, "ContextInfo is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    if-gez p0, :cond_1

    return-object v2

    :cond_1
    const-string p0, "/proc/"

    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v2, p2

    goto :goto_5

    :catchall_0
    move-exception p2

    move-object v2, p0

    goto :goto_6

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    move-object p0, v2

    goto :goto_1

    :catch_4
    move-exception p2

    move-object p0, v2

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v2

    goto :goto_6

    :catch_5
    move-exception p2

    move-object p0, v2

    move-object p1, p0

    goto :goto_1

    :catch_6
    move-exception p2

    move-object p0, v2

    move-object p1, p0

    goto :goto_4

    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_7
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_5

    :goto_3
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_4
    :try_start_6
    const-string/jumbo v1, "SecurityException"

    invoke-static {v3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_4
    :goto_5
    return-object v2

    :goto_6
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_8
    move-exception p0

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :goto_8
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_9
    throw p2
.end method

.method public final processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string v0, "IOException"

    const/4 v1, 0x0

    const-string/jumbo v2, "ThreatDefenseService"

    if-nez p1, :cond_0

    const-string p0, "ContextInfo is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    :cond_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length v3, p1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v8, p1, v6

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length p1, p1

    if-le v7, p1, :cond_4

    const-string p0, "Get sensitive proc failed : "

    invoke-static {v7, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    if-ge p3, v4, :cond_5

    return-object v1

    :cond_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "/proc/"

    const-string v3, "/"

    invoke-static {p3, p1, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {p0, p3, v7}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto/16 :goto_8

    :catch_0
    move-exception p0

    :goto_2
    move-object v1, p1

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_3
    move-object v1, p1

    goto :goto_6

    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-exception p0

    move-object p3, v1

    goto :goto_2

    :catch_4
    move-exception p0

    move-object p3, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    move-object p3, v1

    goto :goto_5

    :catch_6
    move-exception p0

    move-object p3, v1

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p2, v1

    goto :goto_8

    :catch_7
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    goto :goto_5

    :catch_8
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    goto :goto_6

    :goto_5
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :goto_6
    :try_start_7
    const-string/jumbo p1, "SecurityException"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_9
    :goto_7
    return-object p3

    :goto_8
    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_9
    move-exception p1

    goto :goto_a

    :cond_a
    :goto_9
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    :goto_a
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_b
    throw p0
.end method

.method public removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    const-string/jumbo v0, "ThreatDefenseService"

    if-eqz p1, :cond_a

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    aget v3, v2, p2

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v5, "\\("

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    const/4 p1, 0x0

    aget-object v6, v5, p1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string/jumbo v8, "\\)"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-ne v8, v7, :cond_1

    aget-object v8, v5, p1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, p0

    :goto_0
    if-eqz v5, :cond_7

    array-length v8, v5

    aget p2, v2, p2

    sub-int/2addr p2, v7

    if-ne v8, p2, :cond_7

    array-length p0, v5

    move p2, p1

    :goto_1
    if-ge p2, p0, :cond_2

    aget-object v2, v5, p2

    add-int/lit8 v6, v7, 0x1

    aput-object v2, v4, v7

    add-int/lit8 p2, p2, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    array-length p2, p0

    move v2, p1

    :goto_2
    const-string v5, ""

    if-ge v2, p2, :cond_4

    aget v6, p0, v2

    add-int/lit8 v6, v6, -0x1

    if-ne v6, v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Invalid length "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    aput-object v5, v4, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-ge p1, v3, :cond_6

    aget-object p2, v4, p1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Remove sensitive data failed, pid="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, v4, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", name="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v4, v6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Remained len="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p0

    :cond_9
    const-string p2, "Invalid format line="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_a
    :goto_6
    const-string p2, "Invalid argument : "

    invoke-static {p2, p1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v0, "Replace process proc rules : "

    const-string/jumbo v1, "Replace proc rules : "

    const-string v2, "Invalid package rules. "

    const-string/jumbo v3, "app/rufs version : "

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/16 v4, -0x65

    if-nez p1, :cond_1

    return v4

    :cond_1
    const-string/jumbo v5, "sys.mtdl.start"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "ThreatDefenseService"

    if-nez v7, :cond_2

    const-string/jumbo v7, "true"

    invoke-static {v5, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "set system property failed"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v5, -0x6c

    :try_start_0
    new-instance v7, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {v7, p2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string/jumbo p0, "Signature verification failed"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :catch_2
    move-exception p0

    goto/16 :goto_2

    :cond_3
    new-instance v7, Lcom/android/server/enterprise/threatdefense/RuleParser;

    invoke-direct {v7, p2}, Lcom/android/server/enterprise/threatdefense/RuleParser;-><init>(Ljava/lang/String;)V

    iget-object p2, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v5

    :cond_4
    new-instance p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;-><init>(Ljava/lang/String;)V

    iget-object p2, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p0, :cond_5

    const/16 p0, -0x64

    return p0

    :cond_5
    iget-object p0, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcessProcList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v4, v5

    goto :goto_3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Initialize json object failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v4, -0x6b

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_3
    return v4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p0, -0x68

    return p0

    :cond_9
    :goto_4
    const/16 p0, -0x6a

    return p0
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

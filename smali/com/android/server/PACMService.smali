.class public final Lcom/android/server/PACMService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mReceiverList:Ljava/util/List;


# instance fields
.field public final mAtMap:Ljava/util/LinkedHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

.field public final mHandler:Lcom/android/server/PACMService$1;

.field public final mLock:Ljava/lang/Object;

.field public final mReceiver:Lcom/android/server/PACMService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string/jumbo v0, "PACMService"

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/server/PACMService$1;

    invoke-direct {v1, p0}, Lcom/android/server/PACMService$1;-><init>(Lcom/android/server/PACMService;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    new-instance v1, Lcom/android/server/PACMService$2;

    invoke-direct {v1, p0}, Lcom/android/server/PACMService$2;-><init>(Lcom/android/server/PACMService;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    iput-object p1, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/Device;

    invoke-direct {v1, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    const/4 p1, 0x2

    :try_start_0
    new-array v1, p1, [Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;

    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;

    invoke-direct {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;

    invoke-direct {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, p1, :cond_1

    aget-object v2, v1, v3

    iget-object v5, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I

    move-result v2

    if-eq v2, v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add class command list("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/PACMService$PACServiceSocketThread;

    invoke-direct {v1, p0}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "Failed to start PACM Service"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string/jumbo p0, "Success to start PACM Service(S-ver : 10.6.0/ P-ver : 1)"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "PACMService"

    const-string/jumbo v0, "PHASE_LOCK_SETTINGS_READY"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    const/4 p1, 0x1

    const-wide/16 v0, 0x7d0

    iget-object p0, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    const-string/jumbo p0, "PACMService"

    const-string/jumbo v0, "onStart() "

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerForBroadcasts()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-object p0, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PACMService"

    const-string v1, "Failed to add Broadcast"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

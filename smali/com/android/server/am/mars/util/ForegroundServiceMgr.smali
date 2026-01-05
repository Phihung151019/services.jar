.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

.field public final mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static isFGSTarget(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "getPackageManager() failed "

    const-string v2, "ForegroundServiceMgr"

    invoke-static {v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    move p0, v0

    :goto_0
    const/16 v1, 0x22

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 0

    return-void
.end method

.method public final onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isFGSTarget(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    invoke-direct {p3, p1}, Lcom/android/server/am/mars/ForegroundServiceRecord;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, p3, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p3, "appops"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    iput p2, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    iput-object p1, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterPackageName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    sget-object p4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;ILjava/lang/String;)V

    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    iget-object p1, p4, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    iget-object p1, p4, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

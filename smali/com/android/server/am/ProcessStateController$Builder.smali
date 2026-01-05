.class public final Lcom/android/server/am/ProcessStateController$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActiveUids:Lcom/android/server/am/ActiveUids;

.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mUseOomAdjusterModernImpl:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mUseOomAdjusterModernImpl:Z

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$Builder;->mActiveUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method


# virtual methods
.method public setCachedAppOptimizer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    return-object p0
.end method

.method public setHandlerThread(Lcom/android/server/ServiceThread;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public setOomAdjusterInjector(Lcom/android/server/am/OomAdjuster$Injector;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    return-object p0
.end method

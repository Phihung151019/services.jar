.class public final Landroid/os/epic/EpicManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final FEATURE_ACTIVITY:J = 0x1L

.field private static final FEATURE_PROPERTY_KEY:Ljava/lang/String; = "vendor.epic.feature"

.field private static final FEATURE_WEB:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "EpicManagerService"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field private final mContext:Landroid/content/Context;

.field private mDisplayHandlerThread:Landroid/os/HandlerThread;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUidObserver:Landroid/os/epic/EpicUidObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Landroid/os/epic/EpicManagerService$BinderService;

    invoke-direct {v0}, Landroid/os/epic/IEpicManager$Stub;-><init>()V

    const-string/jumbo v1, "epic"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemReady()V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "vendor.epic.feature"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long v4, v0, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/epic/EpicChromeDetector;

    invoke-direct {v0}, Landroid/os/epic/EpicChromeDetector;-><init>()V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    iget-object v0, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DisplayChange"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/epic/EpicDisplayListener;

    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-direct {v0, v1}, Landroid/os/epic/EpicDisplayListener;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mDisplayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    new-instance v0, Landroid/os/epic/EpicUidObserver;

    iget-object v1, p0, Landroid/os/epic/EpicManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/epic/EpicManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Landroid/os/epic/EpicManagerService;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/epic/EpicUidObserver;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V

    iput-object v0, p0, Landroid/os/epic/EpicManagerService;->mUidObserver:Landroid/os/epic/EpicUidObserver;

    iget-object p0, p0, Landroid/os/epic/EpicManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p0, v0, v2, v2, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "EPICSVC"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

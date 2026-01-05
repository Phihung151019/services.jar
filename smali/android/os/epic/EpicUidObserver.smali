.class public final Landroid/os/epic/EpicUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final DELAY_CHECK_MS:J = 0x3e8L


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

.field private mCheckTimer:Ljava/util/Timer;

.field private mChromeDetector:Landroid/os/epic/EpicChromeDetector;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrevPkgName:Ljava/lang/String;

.field private mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/IActivityManager;Landroid/os/epic/EpicChromeDetector;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/epic/Request;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Landroid/os/epic/EpicUidObserver;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p4, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/os/epic/EpicChromeDetector;->LinkLibrary()Z

    move-result p1

    if-nez p1, :cond_1

    iput-object v0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    return-void

    :cond_1
    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    invoke-virtual {p1}, Landroid/os/epic/EpicChromeDetector;->Initialize()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/epic/EpicChromeDetector;->RemoveUid(Ljava/lang/String;)V

    :catch_0
    :cond_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    if-eq p2, p1, :cond_1

    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    invoke-virtual {p3, p2}, Lcom/samsung/epic/Request;->hint_release(Ljava/lang/String;)Z

    :cond_1
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mRequest:Lcom/samsung/epic/Request;

    invoke-virtual {p2, p1}, Lcom/samsung/epic/Request;->perf_hint(Ljava/lang/String;)Z

    iput-object p1, p0, Landroid/os/epic/EpicUidObserver;->mPrevPkgName:Ljava/lang/String;

    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-virtual {p2}, Landroid/os/epic/EpicChromeTask;->setCancel()V

    :cond_3
    new-instance p2, Landroid/os/epic/EpicChromeTask;

    iget-object p3, p0, Landroid/os/epic/EpicUidObserver;->mChromeDetector:Landroid/os/epic/EpicChromeDetector;

    iget-object p4, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-direct {p2, p3, p4}, Landroid/os/epic/EpicChromeTask;-><init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V

    iput-object p2, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-virtual {p2, p1}, Landroid/os/epic/EpicChromeTask;->setCheckPkgName(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    invoke-virtual {p1}, Landroid/os/epic/EpicChromeTask;->reset()V

    iget-object p1, p0, Landroid/os/epic/EpicUidObserver;->mCheckTimer:Ljava/util/Timer;

    iget-object p0, p0, Landroid/os/epic/EpicUidObserver;->mBrowserTimerTask:Landroid/os/epic/EpicChromeTask;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :catch_0
    :goto_0
    return-void
.end method

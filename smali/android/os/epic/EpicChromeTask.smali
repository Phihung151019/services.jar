.class public final Landroid/os/epic/EpicChromeTask;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private mAcquired:Z

.field private mCancel:Z

.field private mCheckPkgName:Ljava/lang/String;

.field private mDetector:Landroid/os/epic/EpicChromeDetector;

.field private mHandle:Lcom/samsung/epic/Request;

.field private mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    new-instance p1, Lcom/samsung/epic/Request;

    const v0, 0x187cc

    invoke-direct {p1, v0}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    if-eqz p2, :cond_0

    iget-boolean p1, p2, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    iput-boolean p1, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/epic/EpicChromeDetector;->CheckChromeBrowser(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->acquire_lock()Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->release_lock()Z

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public setCheckPkgName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

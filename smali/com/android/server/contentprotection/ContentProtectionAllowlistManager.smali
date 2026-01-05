.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAllowedPackages:Ljava/util/Set;

.field final mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

.field public final mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerToken:Ljava/lang/Object;

.field public final mLock:Ljava/lang/Object;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mStarted:Z

.field public final mTimeoutMs:J

.field public mUpdatePendingUntil:Ljava/time/Instant;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Landroid/os/Handler;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mLock:Ljava/lang/Object;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowedPackages:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    iput-wide p3, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mTimeoutMs:J

    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->createPackageMonitor()Lcom/android/internal/content/PackageMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->createAllowlistCallback()Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    return-void
.end method


# virtual methods
.method public createAllowlistCallback()Landroid/service/contentcapture/IContentProtectionAllowlistCallback;
    .locals 1

    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;

    invoke-direct {v0, p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    return-object v0
.end method

.method public createPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .locals 1

    new-instance v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionPackageMonitor;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V

    return-object v0
.end method

.method public final handlePackagesChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createRemoteContentProtectionService()Lcom/android/server/contentprotection/RemoteContentProtectionService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    new-instance v1, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ContentProtectionAllowlistManager"

    const-string v1, "Failed to call remote service"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandlerToken:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mStarted:Z

    return-void
.end method

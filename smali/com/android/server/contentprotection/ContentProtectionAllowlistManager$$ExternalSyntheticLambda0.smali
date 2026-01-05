.class public final synthetic Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mContentCaptureManagerService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

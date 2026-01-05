.class public final Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFailed:Z

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p2, "Failed to delete package: "

    const-string v1, "DevicePolicyManager"

    invoke-static {p2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

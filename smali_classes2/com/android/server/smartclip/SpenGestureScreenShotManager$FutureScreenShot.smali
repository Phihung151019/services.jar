.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;
.super Ljava/util/concurrent/FutureTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
        ">;",
        "Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

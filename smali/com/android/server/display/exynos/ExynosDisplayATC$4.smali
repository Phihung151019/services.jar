.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    iget p0, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    int-to-long v2, p0

    iget p0, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    int-to-long v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    iput-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    return-void
.end method

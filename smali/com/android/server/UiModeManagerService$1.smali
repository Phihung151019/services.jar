.class public final Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mNightModeValue:I


# virtual methods
.method public set(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    return-void
.end method

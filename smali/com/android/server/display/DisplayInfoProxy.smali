.class public final Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mInfo:Landroid/view/DisplayInfo;


# virtual methods
.method public final set(Landroid/view/DisplayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    return-void
.end method

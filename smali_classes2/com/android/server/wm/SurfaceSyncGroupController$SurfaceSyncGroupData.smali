.class public final Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mOwningUid:I

.field public final mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public constructor <init>(ILandroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mOwningUid:I

    iput-object p2, p0, Lcom/android/server/wm/SurfaceSyncGroupController$SurfaceSyncGroupData;->mSurfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    return-void
.end method

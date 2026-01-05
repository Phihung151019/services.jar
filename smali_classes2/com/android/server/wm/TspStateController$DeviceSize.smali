.class public final Lcom/android/server/wm/TspStateController$DeviceSize;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public height:I

.field public initHeight:I

.field public initWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    return-void
.end method

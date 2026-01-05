.class public final Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAttributes:Landroid/media/AudioDeviceAttributes;

.field public final mCaller:Ljava/lang/String;

.field public mForTest:Z

.field public final mState:I


# direct methods
.method public constructor <init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    return-void
.end method

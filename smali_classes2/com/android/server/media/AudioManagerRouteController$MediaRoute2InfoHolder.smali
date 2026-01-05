.class public final Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAudioDeviceInfoType:I

.field public final mCorrespondsToInactiveBluetoothRoute:Z

.field public final mMediaRoute2Info:Landroid/media/MediaRoute2Info;


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    iput p2, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    iput-boolean p3, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    return-void
.end method

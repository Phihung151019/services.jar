.class public final Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActiveBTDeviceName:Ljava/lang/String;

.field public final mAddress:Ljava/lang/String;

.field public final mDevice:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mDevice:I

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mActiveBTDeviceName:Ljava/lang/String;

    return-void
.end method

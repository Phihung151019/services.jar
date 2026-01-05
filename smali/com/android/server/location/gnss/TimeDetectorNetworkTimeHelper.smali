.class public abstract Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field static final MAX_NETWORK_TIME_AGE_MILLIS:I = 0x5265c00


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "TDNetworkTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

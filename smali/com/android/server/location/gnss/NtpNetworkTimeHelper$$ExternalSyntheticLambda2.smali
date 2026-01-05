.class public final synthetic Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    iput-wide p2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$2:J

    iput p6, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    iget-wide v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v4, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$2:J

    iget v6, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;->f$3:I

    iget-object p0, v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative;->injectTime(JJI)V

    return-void
.end method

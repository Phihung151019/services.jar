.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput-wide p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$1:D

    iput-wide p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$2:D

    iput-wide p6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$3:D

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$1:D

    iget-wide v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$2:D

    iget-wide v5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$3:D

    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestCivicAddress$41(DDD)V

    return-void
.end method

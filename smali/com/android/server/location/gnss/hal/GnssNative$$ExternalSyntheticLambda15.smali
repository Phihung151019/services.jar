.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$2:Landroid/location/Location;

    iput p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$3:I

    iput-wide p5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$4:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$2:Landroid/location/Location;

    iget v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$3:I

    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$4:J

    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceTransition$21(ILandroid/location/Location;IJ)V

    return-void
.end method

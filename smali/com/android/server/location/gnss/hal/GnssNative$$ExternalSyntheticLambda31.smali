.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/location/gnss/GnssPowerStats;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestPowerStats$3(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/location/GnssCapabilities;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda31;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/location/GnssCapabilities;

    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$onCapabilitiesChanged$16(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

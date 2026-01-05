.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/location/GnssMeasurementsEvent;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$11(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/location/GnssNavigationMessage;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$14(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/location/gnss/GnssPowerStats;

    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-interface {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocation$30()V

    return-void

    :pswitch_0
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUtcTime$29()V

    return-void

    :pswitch_1
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocationSec$31()V

    return-void

    :pswitch_2
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLppeCommonIesCapability$35()V

    return-void

    :pswitch_3
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUbpCapability$37()V

    return-void

    :pswitch_4
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestWlanCapability$39()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroid/location/IGnssStatusListener;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

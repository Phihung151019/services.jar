.class public final Lcom/android/server/knox/zt/devicetrust/data/ProcData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final event:I


# direct methods
.method public constructor <init>(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;-><init>(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcData;->event:I

    return-void
.end method


# virtual methods
.method public final getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 2

    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcData;->event:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExecData;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    instance-of v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessForkData;

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

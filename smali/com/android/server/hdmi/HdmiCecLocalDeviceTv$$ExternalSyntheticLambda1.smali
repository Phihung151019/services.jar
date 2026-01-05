.class public final synthetic Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [B

    new-instance p0, Landroid/media/AudioDescriptor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    return-object p0
.end method

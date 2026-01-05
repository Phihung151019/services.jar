.class public Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "accauthentication_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native ccic_close()I
.end method

.method public native ccic_open()I
.end method

.method public native genRandom()[B
.end method

.method public native ioctl_longDataRead()[B
.end method

.method public native ioctl_longDataRead_batt()[B
.end method

.method public native ioctl_longDataWrite([B)I
.end method

.method public native ioctl_longDataWrite_batt([B)I
.end method

.method public native verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native wirelesscharger_open()I
.end method
